import '../entities/car.dart';
import '../entities/make_group.dart';

abstract class CarRepository {
  Future<List<Car>> searchCars(String query);
  Future<Car?> getCarById(int id);
  Future<bool> isDatabaseSeeded();
  Future<List<MakeGroup>> getMakeGroups();
  Future<List<Car>> getCarsByMakeId(int makeId);
}
