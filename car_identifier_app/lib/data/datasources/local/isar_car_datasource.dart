import 'package:isar/isar.dart';
import '../../models/car_model.dart';

class IsarCarDatasource {
  final Isar _isar;
  IsarCarDatasource(this._isar);

  Future<List<CarModel>> search(String query) async {
    final q = query.trim().toLowerCase();

    if (q.isEmpty) {
      // Return first 100 cars on empty query to avoid loading all 12k at once
      return _isar.carModels.where().limit(100).findAll();
    }

    final results = await Future.wait([
      _isar.carModels.where().makeStartsWith(q).findAll(),
      _isar.carModels.where().modelStartsWith(q).findAll(),
    ]);

    final seen = <int>{};
    return results
        .expand((list) => list)
        .where((car) => seen.add(car.id))
        .toList();
  }

  Future<CarModel?> getById(int id) => _isar.carModels.get(id);

  Future<int> count() => _isar.carModels.count();
}
