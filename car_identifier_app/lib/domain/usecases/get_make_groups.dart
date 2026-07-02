import '../entities/make_group.dart';
import '../repositories/car_repository.dart';

class GetMakeGroups {
  final CarRepository _repository;
  GetMakeGroups(this._repository);

  Future<List<MakeGroup>> call() => _repository.getMakeGroups();
}
