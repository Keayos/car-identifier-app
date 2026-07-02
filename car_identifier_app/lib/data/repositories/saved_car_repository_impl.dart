import '../../domain/entities/saved_car.dart';
import '../../domain/repositories/saved_car_repository.dart';
import '../datasources/local/saved_car_local_datasource.dart';

class SavedCarRepositoryImpl implements SavedCarRepository {
  final SavedCarLocalDatasource _datasource;

  SavedCarRepositoryImpl(this._datasource);

  @override
  Future<List<SavedCar>> getAllSavedCars() => _datasource.getAll();

  @override
  Future<void> saveCar(SavedCar car) => _datasource.save(car);

  @override
  Future<void> removeCar(String id) => _datasource.remove(id);

  @override
  Future<bool> isSaved(String id) => _datasource.isSaved(id);
}
