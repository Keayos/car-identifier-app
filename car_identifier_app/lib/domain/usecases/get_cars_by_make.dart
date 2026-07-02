import '../entities/car.dart';
import '../repositories/car_repository.dart';

class GetCarsByMake {
  final CarRepository _repository;
  GetCarsByMake(this._repository);

  Future<List<Car>> call(int makeId) => _repository.getCarsByMakeId(makeId);
}
