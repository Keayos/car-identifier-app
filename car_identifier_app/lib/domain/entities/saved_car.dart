class SavedCar {
  final String id;
  final String imagePath;
  final String displayName;
  final String? make;
  final String? model;
  final int? matchedCarId;
  final DateTime savedAt;

  const SavedCar({
    required this.id,
    required this.imagePath,
    required this.displayName,
    this.make,
    this.model,
    this.matchedCarId,
    required this.savedAt,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'imagePath': imagePath,
        'displayName': displayName,
        'make': make,
        'model': model,
        'matchedCarId': matchedCarId,
        'savedAt': savedAt.toIso8601String(),
      };

  factory SavedCar.fromJson(Map<String, dynamic> json) => SavedCar(
        id: json['id'] as String,
        imagePath: json['imagePath'] as String,
        displayName: json['displayName'] as String,
        make: json['make'] as String?,
        model: json['model'] as String?,
        matchedCarId: json['matchedCarId'] as int?,
        savedAt: DateTime.parse(json['savedAt'] as String),
      );
}
