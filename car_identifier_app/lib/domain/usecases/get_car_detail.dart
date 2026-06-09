import '../entities/car.dart';
import '../repositories/car_repository.dart';

class GetCarDetail {
  final CarRepository _repository;
  GetCarDetail(this._repository);

  Future<Car?> call(int id) => _repository.getCarById(id);
}
