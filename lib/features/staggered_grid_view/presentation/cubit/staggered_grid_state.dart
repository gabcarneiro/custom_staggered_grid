part of 'staggered_grid_cubit.dart';

@immutable
abstract class StaggeredGridState {}

class StaggeredGridLoading extends StaggeredGridState {}

class StaggeredGridError extends StaggeredGridState {}

class StaggeredGridLoaded extends StaggeredGridState {
  StaggeredGridLoaded(this.gridItems);

  final List<GridItem> gridItems;
}
