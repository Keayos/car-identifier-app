import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/constants/app_colors.dart';

class DubizzleSearchButton extends StatelessWidget {
  final String query;

  const DubizzleSearchButton({super.key, required this.query});

  String _slugify(String value) {
    return value
        .toLowerCase()
        .trim()
        .replaceAll(RegExp(r'[^a-z0-9\s-]'), '')
        .replaceAll(RegExp(r'\s+'), '-');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accent,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        icon: const Icon(Icons.search),
        label: const Text(
          'Search on Dubizzle',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        onPressed: () async {
          final slug = _slugify(query);
          final url = Uri.parse(
              'https://www.dubizzle.com.eg/en/vehicles/cars-for-sale/q-$slug/');
          final launched = await launchUrl(
            url,
            mode: LaunchMode.externalApplication,
          );
          if (!launched && context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Could not open Dubizzle')),
            );
          }
        },
      ),
    );
  }
}
