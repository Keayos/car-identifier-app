import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/local/saved_car_local_datasource.dart';
import '../../data/repositories/saved_car_repository_impl.dart';
import '../../domain/entities/saved_car.dart';
import '../../domain/repositories/saved_car_repository.dart';
import '../../domain/usecases/get_saved_cars.dart';
import '../../domain/usecases/remove_saved_car.dart';
import '../../domain/usecases/save_car.dart';

// ── datasource / repository ─────────────────────────────────
final savedCarLocalDatasourceProvider =
    Provider<SavedCarLocalDatasource>((_) => SavedCarLocalDatasource());

final savedCarRepositoryProvider = Provider<SavedCarRepository>(
  (ref) => SavedCarRepositoryImpl(ref.watch(savedCarLocalDatasourceProvider)),
);

// ── use cases ────────────────────────────────────────────────
final getSavedCarsUsecaseProvider = Provider<GetSavedCars>(
  (ref) => GetSavedCars(ref.watch(savedCarRepositoryProvider)),
);

final saveCarUsecaseProvider = Provider<SaveCar>(
  (ref) => SaveCar(ref.watch(savedCarRepositoryProvider)),
);

final removeSavedCarUsecaseProvider = Provider<RemoveSavedCar>(
  (ref) => RemoveSavedCar(ref.watch(savedCarRepositoryProvider)),
);

// ── state notifier: keeps the saved list reactive ─────────────
class SavedCarsNotifier extends StateNotifier<AsyncValue<List<SavedCar>>> {
  final GetSavedCars _getSavedCars;
  final SaveCar _saveCar;
  final RemoveSavedCar _removeSavedCar;
  final SavedCarLocalDatasource _datasource;

  SavedCarsNotifier(
    this._getSavedCars,
    this._saveCar,
    this._removeSavedCar,
    this._datasource,
  ) : super(const AsyncValue.loading()) {
    _load();
  }

  Future<void> _load() async {
    state = const AsyncValue.loading();
    try {
      final cars = await _getSavedCars();
      state = AsyncValue.data(cars);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  bool isSaved(String id) {
    return state.maybeWhen(
      data: (cars) => cars.any((c) => c.id == id),
      orElse: () => false,
    );
  }

  /// Saves a car, copying [tempImagePath] into permanent storage first.
  Future<void> save({
    required String id,
    required String tempImagePath,
    required String displayName,
    String? make,
    String? model,
    int? matchedCarId,
  }) async {
    final permanentPath = await _datasource.persistImage(tempImagePath, id);
    final car = SavedCar(
      id: id,
      imagePath: permanentPath,
      displayName: displayName,
      make: make,
      model: model,
      matchedCarId: matchedCarId,
      savedAt: DateTime.now(),
    );
    await _saveCar(car);
    await _load();
  }

  Future<void> remove(String id) async {
    await _removeSavedCar(id);
    await _load();
  }
}

final savedCarsProvider =
    StateNotifierProvider<SavedCarsNotifier, AsyncValue<List<SavedCar>>>(
  (ref) => SavedCarsNotifier(
    ref.watch(getSavedCarsUsecaseProvider),
    ref.watch(saveCarUsecaseProvider),
    ref.watch(removeSavedCarUsecaseProvider),
    ref.watch(savedCarLocalDatasourceProvider),
  ),
);

// ── derived: is a given id currently saved ─────────────────────
final isCarSavedProvider = Provider.family<bool, String>((ref, id) {
  final notifier = ref.watch(savedCarsProvider.notifier);
  ref.watch(savedCarsProvider); // rebuild when list changes
  return notifier.isSaved(id);
});
