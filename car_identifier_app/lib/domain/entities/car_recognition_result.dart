import 'car.dart';

/// Result of an AI-based car recognition attempt.
///
/// [recognizedMake] / [recognizedModel] are the AI's raw guess.
/// [matchedCars] holds every local database entry sharing that make/model;
/// empty if no match was found, in which case the UI should show the raw
/// AI guess with a "not in database" note.
class CarRecognitionResult {
  final String? recognizedMake;
  final String? recognizedModel;
  final List<Car> matchedCars;

  const CarRecognitionResult({
    this.recognizedMake,
    this.recognizedModel,
    this.matchedCars = const [],
  });

  bool get hasMatch => matchedCars.isNotEmpty;

  String get displayGuess {
    final parts = [recognizedMake, recognizedModel]
        .where((p) => p != null && p.trim().isNotEmpty)
        .toList();
    return parts.isEmpty ? 'Unknown car' : parts.join(' ');
  }
}
