//import 'package:isar/isar.dart';
import '../../domain/entities/car.dart';
import '../../domain/repositories/car_repository.dart';
import '../datasources/local/isar_car_datasource.dart';
import '../models/car_model.dart';

class CarRepositoryImpl implements CarRepository {
  final IsarCarDatasource _datasource;

  CarRepositoryImpl(this._datasource);

  @override
  Future<List<Car>> searchCars(String query) async {
    final models = await _datasource.search(query);
    return models.map(_toDomain).toList();
  }

  @override
  Future<Car?> getCarById(int id) async {
    final model = await _datasource.getById(id);
    return model == null ? null : _toDomain(model);
  }

  @override
  Future<bool> isDatabaseSeeded() async {
    final count = await _datasource.count();
    return count > 0;
  }

  Car _toDomain(CarModel m) => Car(
    id: m.id,
    make: m.make,
    model: m.model,
    category: m.category,
    year: m.year,
    mlLabel: m.mlLabel,
  );
}
