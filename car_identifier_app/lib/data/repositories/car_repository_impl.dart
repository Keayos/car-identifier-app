import '../../domain/entities/car.dart';
import '../../domain/entities/make_group.dart';
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

  @override
  Future<List<MakeGroup>> getMakeGroups() async {
    final all = await _datasource.getAll();
    final Map<int, MakeGroup> groups = {};

    for (final m in all) {
      if (m.makeId == null || m.make == null) continue;
      final existing = groups[m.makeId];
      groups[m.makeId!] = MakeGroup(
        makeId: m.makeId!,
        make: m.make!,
        modelCount: (existing?.modelCount ?? 0) + 1,
      );
    }

    final list = groups.values.toList()
      ..sort((a, b) => a.make.compareTo(b.make));
    return list;
  }

  @override
  Future<List<Car>> getCarsByMakeId(int makeId) async {
    final models = await _datasource.getByMakeId(makeId);
    return models.map(_toDomain).toList();
  }

  Car _toDomain(CarModel m) => Car(
        id: m.id,
        makeModel: m.makeModel,
        makeId: m.makeId,
        make: m.make,
        model: m.model,
        trimDescription: m.trimDescription,
        engineFuelType: m.engineFuelType,
        engineHp: m.engineHp,
        engineCylinders: m.engineCylinders,
        engineSize: m.engineSize,
        engineRpm: m.engineRpm,
        engineDriveType: m.engineDriveType,
        engineTransmission: m.engineTransmission,
        bodyType: m.bodyType,
        bodyDoors: m.bodyDoors,
        bodySeats: m.bodySeats,
      );
}
