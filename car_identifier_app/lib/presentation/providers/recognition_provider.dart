import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../main.dart' show isar;
import '../../data/datasources/local/isar_car_datasource.dart';
import '../../data/datasources/remote/openrouter_datasource.dart';
import '../../data/repositories/car_recognizer_repository_impl.dart';
import '../../domain/entities/car_recognition_result.dart';

final openRouterDatasourceProvider = Provider<OpenRouterDatasource>(
  (_) => OpenRouterDatasource(),
);

final carRecognizerRepositoryProvider = Provider<CarRecognizerRepositoryImpl>(
  (ref) => CarRecognizerRepositoryImpl(
    ref.watch(openRouterDatasourceProvider),
    IsarCarDatasource(isar),
  ),
);

/// Family provider: pass the captured image file, get back the
/// recognition result (AI guess + optional local DB match).
final carRecognitionProvider =
    FutureProvider.family<CarRecognitionResult, File>((ref, image) {
  final repo = ref.watch(carRecognizerRepositoryProvider);
  return repo.identifyCar(image);
});
