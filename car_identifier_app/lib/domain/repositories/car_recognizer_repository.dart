import 'dart:io';
import '../entities/car_recognition_result.dart';

abstract class CarRecognizerRepository {
  Future<CarRecognitionResult> identifyCar(File image);
}
