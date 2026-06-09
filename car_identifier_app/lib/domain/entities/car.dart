class Car {
  final int id;
  final String make;
  final String model;
  final String category;
  final int year;
  final String? mlLabel;

  const Car({
    required this.id,
    required this.make,
    required this.model,
    required this.category,
    required this.year,
    this.mlLabel,
  });

  String get displayName => '$year $make $model';
}
