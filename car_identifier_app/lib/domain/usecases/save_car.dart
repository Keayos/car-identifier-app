import '../entities/saved_car.dart';
import '../repositories/saved_car_repository.dart';

class SaveCar {
  final SavedCarRepository _repository;
  SaveCar(this._repository);

  Future<void> call(SavedCar car) => _repository.saveCar(car);
}
