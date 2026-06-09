import '../entities/car.dart';

abstract class CarRepository {
  Future<List<Car>> searchCars(String query);
  Future<Car?> getCarById(int id);
  Future<bool> isDatabaseSeeded();
}
