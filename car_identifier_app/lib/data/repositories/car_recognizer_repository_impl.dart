import 'dart:io';
import '../../domain/entities/car_recognition_result.dart';
import '../../domain/repositories/car_recognizer_repository.dart';
import '../datasources/local/isar_car_datasource.dart';
import '../datasources/remote/openrouter_datasource.dart';
import '../repositories/car_repository_impl.dart';

class CarRecognizerRepositoryImpl implements CarRecognizerRepository {
  final OpenRouterDatasource _aiDatasource;
  final IsarCarDatasource _localDatasource;

  CarRecognizerRepositoryImpl(this._aiDatasource, this._localDatasource);

  @override
  Future<CarRecognitionResult> identifyCar(File image) async {
    final guess = await _aiDatasource.identify(image);
    final make = guess['make'];
    final model = guess['model'];

    if (make == null && model == null) {
      return const CarRecognitionResult();
    }

    final query = [make, model]
        .where((p) => p != null && p.trim().isNotEmpty)
        .join(' ');

    final localMatches = await _localDatasource.search(query);

    final repo = CarRepositoryImpl(_localDatasource);
    final matchedCar = localMatches.isNotEmpty
        ? await repo.getCarById(localMatches.first.id)
        : null;

    return CarRecognitionResult(
      recognizedMake: make,
      recognizedModel: model,
      matchedCar: matchedCar,
    );
  }
}
