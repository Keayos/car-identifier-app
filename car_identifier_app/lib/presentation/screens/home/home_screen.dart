import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/constants/app_colors.dart';
import '../../providers/search_provider.dart';
import '../../widgets/car_card.dart';
import '../../widgets/make_card.dart';
import '../detail/detail_screen.dart';
import '../make_models/make_models_screen.dart';
import '../recognition/recognition_result_screen.dart';
import '../saved/saved_cars_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _controller = TextEditingController();
  final _picker = ImagePicker();
  Timer? _debounce;

  @override
  void dispose() {
    _controller.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      ref.read(searchQueryProvider.notifier).state = value;
    });
  }

  Future<void> _pickImage(ImageSource source) async {
    final XFile? photo = await _picker.pickImage(
      source: source,
      imageQuality: 85,
    );

    if (photo != null && mounted) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => RecognitionResultScreen(image: File(photo.path)),
        ),
      );
    }
  }

  void _showImageSourceMenu() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              ListTile(
                leading: const Icon(Icons.camera_alt_outlined,
                    color: AppColors.textPrimary),
                title: const Text('Take Photo',
                    style: TextStyle(color: AppColors.textPrimary)),
                onTap: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library_outlined,
                    color: AppColors.textPrimary),
                title: const Text('Choose from Gallery',
                    style: TextStyle(color: AppColors.textPrimary)),
                onTap: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.gallery);
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final query = ref.watch(searchQueryProvider);
    final isSearching = query.trim().isNotEmpty;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: const Text(
          'Car Identifier',
          style: TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border_rounded,
                color: AppColors.textPrimary),
            tooltip: 'Saved cars',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const SavedCarsScreen()),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined,
                color: AppColors.textPrimary),
            tooltip: 'Identify a car',
            onPressed: _showImageSourceMenu,
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          // ── Search bar ───────────────────────────────────
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _controller,
              onChanged: _onSearchChanged,
              style: const TextStyle(color: AppColors.textPrimary),
              decoration: InputDecoration(
                hintText: 'Search make or model…',
                hintStyle: const TextStyle(color: AppColors.textSecondary),
                prefixIcon: const Icon(Icons.search,
                    color: AppColors.textSecondary),
                suffixIcon: _controller.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear,
                            color: AppColors.textSecondary),
                        onPressed: () {
                          _controller.clear();
                          ref.read(searchQueryProvider.notifier).state = '';
                        },
                      )
                    : null,
                filled: true,
                fillColor: AppColors.surface,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // ── Results ──────────────────────────────────────
          Expanded(
            child: isSearching
                ? _buildSearchResults(context)
                : _buildMakeGroups(context),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults(BuildContext context) {
    final results = ref.watch(searchResultsProvider);
    return results.when(
      loading: () => const Center(
        child: CircularProgressIndicator(
            color: AppColors.accent, strokeWidth: 2),
      ),
      error: (e, _) => Center(
        child:
            Text('Error: $e', style: const TextStyle(color: AppColors.error)),
      ),
      data: (cars) {
        if (cars.isEmpty) {
          return const Center(
            child: Text(
              'No cars found.',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          itemCount: cars.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            final car = cars[index];
            return CarCard(
              car: car,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailScreen(car: car),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildMakeGroups(BuildContext context) {
    final makesAsync = ref.watch(makeGroupsProvider);
    return makesAsync.when(
      loading: () => const Center(
        child: CircularProgressIndicator(
            color: AppColors.accent, strokeWidth: 2),
      ),
      error: (e, _) => Center(
        child:
            Text('Error: $e', style: const TextStyle(color: AppColors.error)),
      ),
      data: (makes) {
        if (makes.isEmpty) {
          return const Center(
            child: Text(
              'No makes found.',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          );
        }
        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: makes.length,
          itemBuilder: (context, index) {
            final makeGroup = makes[index];
            return MakeCard(
              makeGroup: makeGroup,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => MakeModelsScreen(
                    makeId: makeGroup.makeId,
                    makeName: makeGroup.make,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
