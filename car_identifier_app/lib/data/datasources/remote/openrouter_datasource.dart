import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

/// Calls OpenRouter's vision-capable free models to identify a car from
/// a photo. Tries each model in [_modelChain] in order, falling back to
/// the next one on timeout or error.
class OpenRouterDatasource {
  static const _endpoint = 'https://openrouter.ai/api/v1/chat/completions';
  static const _timeout = Duration(seconds: 12);

  static const _modelChain = [
    'google/gemma-4-31b-it:free',
    'nvidia/nemotron-nano-12b-v2-vl:free',
    'openrouter/free',
  ];

  static const _prompt = '''
Identify the make and model of the car in this image.
Respond ONLY with raw JSON, no markdown, no explanation, in this exact format:
{"make": "<car make>", "model": "<car model>"}
If you cannot identify the car, respond with {"make": null, "model": null}.
''';

  /// Returns a map with keys 'make' and 'model' (nullable strings),
  /// or throws if every model in the chain fails.
  Future<Map<String, String?>> identify(File image) async {
    final apiKey = dotenv.env['OPENROUTER_API_KEY'];
    if (apiKey == null || apiKey.isEmpty) {
      throw Exception('OPENROUTER_API_KEY is missing from .env');
    }

    final bytes = await image.readAsBytes();
    final base64Image = base64Encode(bytes);
    final dataUri = 'data:image/jpeg;base64,$base64Image';

    Object? lastError;

    for (final model in _modelChain) {
      try {
        final response = await http
            .post(
              Uri.parse(_endpoint),
              headers: {
                'Authorization': 'Bearer $apiKey',
                'Content-Type': 'application/json',
              },
              body: jsonEncode({
                'model': model,
                'messages': [
                  {
                    'role': 'user',
                    'content': [
                      {'type': 'text', 'text': _prompt},
                      {
                        'type': 'image_url',
                        'image_url': {'url': dataUri},
                      },
                    ],
                  },
                ],
              }),
            )
            .timeout(_timeout);

        if (response.statusCode != 200) {
          lastError = 'Model $model returned ${response.statusCode}';
          continue;
        }

        final decoded = jsonDecode(response.body);
        final content =
            decoded['choices']?[0]?['message']?['content'] as String?;

        if (content == null) {
          lastError = 'Model $model returned empty content';
          continue;
        }

        final parsed = _parseJsonContent(content);
        if (parsed != null) {
          return parsed;
        }

        lastError = 'Model $model returned unparsable content: $content';
      } catch (e) {
        lastError = e;
        continue;
      }
    }

    throw Exception('All recognition models failed. Last error: $lastError');
  }

  Map<String, String?>? _parseJsonContent(String content) {
    try {
      // Strip markdown code fences if the model added them despite instructions
      var cleaned = content.trim();
      if (cleaned.startsWith('```')) {
        cleaned = cleaned
            .replaceAll(RegExp(r'^```(json)?'), '')
            .replaceAll(RegExp(r'```$'), '')
            .trim();
      }

      final json = jsonDecode(cleaned);
      return {
        'make': json['make'] as String?,
        'model': json['model'] as String?,
      };
    } catch (_) {
      return null;
    }
  }
}
