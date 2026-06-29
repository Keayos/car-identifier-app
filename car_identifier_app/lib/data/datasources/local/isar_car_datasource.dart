import 'package:isar/isar.dart';
import '../../models/car_model.dart';

class IsarCarDatasource {
  final Isar _isar;
  IsarCarDatasource(this._isar);

  Future<List<CarModel>> search(String query) async {
    final q = query.trim();

    if (q.isEmpty) {
      return _isar.carModels.where().limit(100).findAll();
    }

    return _isar.carModels
        .filter()
        .makeModelContains(q, caseSensitive: false)
        .findAll();
  }

  Future<CarModel?> getById(int id) => _isar.carModels.get(id);

  Future<int> count() => _isar.carModels.count();
}
