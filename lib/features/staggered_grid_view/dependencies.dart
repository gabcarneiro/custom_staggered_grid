// ignore_for_file: cascade_invocations

import 'package:custom_staggered_grid/features/staggered_grid_view/data/datasources/grid_item_remote_data_source.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/data/repositories/grid_item_repository_impl.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/domain/repositories/grid_item_repository.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/domain/use_cases/get_grid_items_use_case.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/presentation/cubit/staggered_grid_cubit.dart';
import 'package:custom_staggered_grid/shared/dependency_injector.dart';

void setupStaggeredViewDependencies() {
  // domain
  getIt.registerFactory<GetGridItemsUseCase>(
    () => GetGridItemsUseCase(getIt.get()),
  );

  // data
  getIt.registerFactory<GridItemRepository>(
    () => GridItemRepositoryImpl(getIt.get()),
  );

  getIt.registerFactory<GridItemRemoteDataSource>(
    GridItemRemoteDataSourceImpl.new,
  );

  // presentation
  getIt.registerFactory<StaggeredGridCubit>(
    () => StaggeredGridCubit(getIt.get()),
  );
}
