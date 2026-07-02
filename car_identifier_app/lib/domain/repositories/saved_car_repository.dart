import '../entities/saved_car.dart';

abstract class SavedCarRepository {
  Future<List<SavedCar>> getAllSavedCars();
  Future<void> saveCar(SavedCar car);
  Future<void> removeCar(String id);
  Future<bool> isSaved(String id);
}
