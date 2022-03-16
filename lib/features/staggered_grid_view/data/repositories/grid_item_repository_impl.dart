import 'package:custom_staggered_grid/features/staggered_grid_view/data/datasources/grid_item_remote_data_source.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/domain/entities/grid_item.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/domain/repositories/grid_item_repository.dart';

class GridItemRepositoryImpl implements GridItemRepository {
  GridItemRepositoryImpl(this._dataSource);

  final GridItemRemoteDataSource _dataSource;

  @override
  Future<List<GridItem>> getGridItems() {
    return _dataSource.fetchGridItems();
  }
}
