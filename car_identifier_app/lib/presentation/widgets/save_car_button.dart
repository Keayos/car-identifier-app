import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/constants/app_colors.dart';
import '../providers/saved_car_provider.dart';

class SaveCarButton extends ConsumerWidget {
  final String id;
  final String tempImagePath;
  final String displayName;
  final String? make;
  final String? model;
  final int? matchedCarId;

  const SaveCarButton({
    super.key,
    required this.id,
    required this.tempImagePath,
    required this.displayName,
    this.make,
    this.model,
    this.matchedCarId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSaved = ref.watch(isCarSavedProvider(id));

    return IconButton(
      icon: Icon(
        isSaved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
        color: isSaved ? AppColors.accent : AppColors.textSecondary,
      ),
      tooltip: isSaved ? 'Remove from saved' : 'Save car',
      onPressed: () async {
        final notifier = ref.read(savedCarsProvider.notifier);
        if (isSaved) {
          await notifier.remove(id);
        } else {
          await notifier.save(
            id: id,
            tempImagePath: tempImagePath,
            displayName: displayName,
            make: make,
            model: model,
            matchedCarId: matchedCarId,
          );
        }
      },
    );
  }
}
