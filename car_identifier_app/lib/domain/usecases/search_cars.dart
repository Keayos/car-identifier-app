import '../entities/car.dart';
import '../repositories/car_repository.dart';

class SearchCars {
  final CarRepository _repository;
  SearchCars(this._repository);

  Future<List<Car>> call(String query) => _repository.searchCars(query);
}
