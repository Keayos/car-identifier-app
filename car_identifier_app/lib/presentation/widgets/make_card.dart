import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../domain/entities/make_group.dart';

class MakeCard extends StatelessWidget {
  final MakeGroup makeGroup;
  final VoidCallback onTap;

  const MakeCard({super.key, required this.makeGroup, required this.onTap});

  String get _logoPath {
    final name = makeGroup.make.toLowerCase().replaceAll(' ', '-');
    return 'assets/logos/$name.png';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.divider),
          ),
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  _logoPath,
                  fit: BoxFit.contain,
                  errorBuilder: (_, __, ___) => const Icon(
                    Icons.directions_car_outlined,
                    color: AppColors.textSecondary,
                    size: 36,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                makeGroup.make,
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
