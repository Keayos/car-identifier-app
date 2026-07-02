import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../domain/entities/saved_car.dart';

class SavedCarLocalDatasource {
  static const _prefsKey = 'saved_cars';

  Future<List<SavedCar>> getAll() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_prefsKey);
    if (raw == null || raw.isEmpty) return [];

    final List<dynamic> list = jsonDecode(raw);
    return list
        .map((e) => SavedCar.fromJson(e as Map<String, dynamic>))
        .toList()
      ..sort((a, b) => b.savedAt.compareTo(a.savedAt));
  }

  Future<void> _writeAll(List<SavedCar> cars) async {
    final prefs = await SharedPreferences.getInstance();
    final raw = jsonEncode(cars.map((c) => c.toJson()).toList());
    await prefs.setString(_prefsKey, raw);
  }

  Future<void> save(SavedCar car) async {
    final cars = await getAll();
    cars.removeWhere((c) => c.id == car.id);
    cars.add(car);
    await _writeAll(cars);
  }

  Future<void> remove(String id) async {
    final cars = await getAll();
    final target = cars.where((c) => c.id == id).toList();
    cars.removeWhere((c) => c.id == id);
    await _writeAll(cars);

    // Best-effort cleanup of the copied image file.
    if (target.isNotEmpty) {
      final file = File(target.first.imagePath);
      if (await file.exists()) {
        try {
          await file.delete();
        } catch (_) {
          // Non-fatal; leftover file, not a functional problem.
        }
      }
    }
  }

  Future<bool> isSaved(String id) async {
    final cars = await getAll();
    return cars.any((c) => c.id == id);
  }

  /// Copies a temp picker image into permanent app storage and
  /// returns the new path. The temp file from image_picker is not
  /// guaranteed to survive after the picker session ends.
  Future<String> persistImage(String tempPath, String id) async {
    final dir = await getApplicationDocumentsDirectory();
    final savedDir = Directory('${dir.path}/saved_cars');
    if (!await savedDir.exists()) {
      await savedDir.create(recursive: true);
    }

    final ext = tempPath.contains('.') ? tempPath.split('.').last : 'jpg';
    final safeName =
        'car_${DateTime.now().millisecondsSinceEpoch}_${id.hashCode}';
    final destPath = '${savedDir.path}/$safeName.$ext';
    final destFile = await File(tempPath).copy(destPath);
    return destFile.path;
  }
}
