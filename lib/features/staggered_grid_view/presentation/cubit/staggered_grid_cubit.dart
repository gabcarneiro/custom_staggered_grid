import 'package:bloc/bloc.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/domain/entities/grid_item.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/domain/use_cases/get_grid_items_use_case.dart';
import 'package:meta/meta.dart';

part 'staggered_grid_state.dart';

class StaggeredGridCubit extends Cubit<StaggeredGridState> {
  StaggeredGridCubit(this._useCase) : super(StaggeredGridLoading()) {
    fetchGridItems();
  }

  final GetGridItemsUseCase _useCase;

  Future<void> fetchGridItems() async {
    try {
      emit(StaggeredGridLoading());
      final gridItems = await _useCase();
      emit(StaggeredGridLoaded(gridItems));
    } catch (e) {
      emit(StaggeredGridError());
    }
  }
}
