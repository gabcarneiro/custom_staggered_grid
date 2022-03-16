import 'package:custom_staggered_grid/features/staggered_grid_view/domain/entities/grid_item.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/domain/repositories/grid_item_repository.dart';

class GetGridItemsUseCase {
  GetGridItemsUseCase(this._repository);

  final GridItemRepository _repository;

  Future<List<GridItem>> call() => _repository.getGridItems();
}
