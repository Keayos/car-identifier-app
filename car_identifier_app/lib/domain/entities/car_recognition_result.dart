import 'car.dart';

/// Result of an AI-based car recognition attempt.
///
/// [recognizedMake] / [recognizedModel] are the AI's raw guess.
/// [matchedCar] is populated if a corresponding entry was found in the
/// local database; if null, the UI should show the raw AI guess with a
/// "not in database" note.
class CarRecognitionResult {
  final String? recognizedMake;
  final String? recognizedModel;
  final Car? matchedCar;

  const CarRecognitionResult({
    this.recognizedMake,
    this.recognizedModel,
    this.matchedCar,
  });

  bool get hasMatch => matchedCar != null;

  String get displayGuess {
    final parts = [recognizedMake, recognizedModel]
        .where((p) => p != null && p.trim().isNotEmpty)
        .toList();
    return parts.isEmpty ? 'Unknown car' : parts.join(' ');
  }
}
