class Car {
  final int id;
  final String makeModel;
  final int year;
  final String? engineFuelType;
  final double? engineHp;
  final int? engineCylinders;
  final String? transmissionType;
  final String? drivenWheels;
  final int? numberOfDoors;
  final String? vehicleSize;

  const Car({
    required this.id,
    required this.makeModel,
    required this.year,
    this.engineFuelType,
    this.engineHp,
    this.engineCylinders,
    this.transmissionType,
    this.drivenWheels,
    this.numberOfDoors,
    this.vehicleSize,
  });

  String get displayName => '$year $makeModel';
}
