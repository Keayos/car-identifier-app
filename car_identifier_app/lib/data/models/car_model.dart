import 'package:isar/isar.dart';

part 'car_model.g.dart';

@Collection()
class CarModel {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value, caseSensitive: false)
  late String makeModel;

  @Index()
  int? makeId;

  String? make;
  String? model;
  String? trimDescription;

  String? engineFuelType;
  double? engineHp;
  String? engineCylinders;
  double? engineSize;
  int? engineRpm;

  @Index(type: IndexType.value, caseSensitive: false)
  String? engineDriveType;

  @Index(type: IndexType.value, caseSensitive: false)
  String? engineTransmission;

  @Index(type: IndexType.value, caseSensitive: false)
  String? bodyType;

  int? bodyDoors;
  int? bodySeats;
}
