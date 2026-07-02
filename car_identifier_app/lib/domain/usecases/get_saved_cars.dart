import '../entities/saved_car.dart';
import '../repositories/saved_car_repository.dart';

class GetSavedCars {
  final SavedCarRepository _repository;
  GetSavedCars(this._repository);

  Future<List<SavedCar>> call() => _repository.getAllSavedCars();
}
