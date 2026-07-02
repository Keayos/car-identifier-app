import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_colors.dart';
import '../../../domain/entities/saved_car.dart';
import '../../providers/saved_car_provider.dart';
import '../../providers/search_provider.dart';
import '../detail/detail_screen.dart';
import 'saved_car_simple_screen.dart';

class SavedCarsScreen extends ConsumerWidget {
  const SavedCarsScreen({super.key});

  Future<void> _confirmRemove(
      BuildContext context, WidgetRef ref, SavedCar car) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: const Text('Remove saved car?',
            style: TextStyle(color: AppColors.textPrimary)),
        content: Text(
          car.displayName,
          style: const TextStyle(color: AppColors.textSecondary),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Remove',
                style: TextStyle(color: AppColors.error)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await ref.read(savedCarsProvider.notifier).remove(car.id);
    }
  }

  Future<void> _openCar(
      BuildContext context, WidgetRef ref, SavedCar car) async {
    if (car.matchedCarId != null) {
      final getCarDetail = ref.read(getCarDetailUsecaseProvider);
      final fullCar = await getCarDetail(car.matchedCarId!);
      if (fullCar != null && context.mounted) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => DetailScreen(car: fullCar)),
        );
        return;
      }
    }
    if (context.mounted) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => SavedCarSimpleScreen(
            imagePath: car.imagePath,
            displayName: car.displayName,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedAsync = ref.watch(savedCarsProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded,
              color: AppColors.textPrimary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Saved Cars',
          style: TextStyle(
              color: AppColors.textPrimary, fontWeight: FontWeight.bold),
        ),
      ),
      body: savedAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(
              color: AppColors.accent, strokeWidth: 2),
        ),
        error: (e, _) => Center(
          child: Text('Error: $e',
              style: const TextStyle(color: AppColors.error)),
        ),
        data: (cars) {
          if (cars.isEmpty) {
            return const Center(
              child: Text(
                'No saved cars yet.\nIdentify a car and tap the bookmark icon to save it.',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.textSecondary),
              ),
            );
          }
          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.85,
            ),
            itemCount: cars.length,
            itemBuilder: (context, index) {
              final car = cars[index];
              return GestureDetector(
                onTap: () => _openCar(context, ref, car),
                onLongPress: () => _confirmRemove(context, ref, car),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.divider),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Image.file(
                          File(car.imagePath),
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            color: AppColors.background,
                            alignment: Alignment.center,
                            child: const Icon(Icons.broken_image_outlined,
                                color: AppColors.textSecondary),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          car.displayName,
                          style: const TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
