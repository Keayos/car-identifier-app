import '../repositories/saved_car_repository.dart';

class RemoveSavedCar {
  final SavedCarRepository _repository;
  RemoveSavedCar(this._repository);

  Future<void> call(String id) => _repository.removeCar(id);
}
