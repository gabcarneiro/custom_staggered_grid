import 'package:custom_staggered_grid/features/staggered_grid_view/domain/entities/feature.dart';

class GridItem {
  GridItem({
    required this.feature,
    required this.title,
    required this.backgroundColor,
    required this.iconUrl,
    required this.backgroundImage,
    required this.crossAxisSize,
    required this.mainAxisSize,
  });

  final Feature feature;
  final String title;
  final String backgroundColor;
  final String iconUrl;
  final String? backgroundImage;
  final int crossAxisSize;
  final int mainAxisSize;
}
