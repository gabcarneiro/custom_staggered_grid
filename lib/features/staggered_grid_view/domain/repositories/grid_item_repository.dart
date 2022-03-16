// ignore_for_file: one_member_abstracts

import 'package:custom_staggered_grid/features/staggered_grid_view/domain/entities/grid_item.dart';

abstract class GridItemRepository {
  Future<List<GridItem>> getGridItems();
}
