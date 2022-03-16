import 'package:custom_staggered_grid/features/staggered_grid_view/domain/entities/grid_item.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/presentation/cubit/staggered_grid_cubit.dart';
import 'package:custom_staggered_grid/shared/dependency_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridPage extends StatefulWidget {
  const StaggeredGridPage({Key? key}) : super(key: key);

  @override
  State<StaggeredGridPage> createState() => _StaggeredGridPageState();
}

class _StaggeredGridPageState extends State<StaggeredGridPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<StaggeredGridCubit>(
      create: (context) => getIt.get<StaggeredGridCubit>(),
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<StaggeredGridCubit, StaggeredGridState>(
            builder: (context, state) {
              if (state is StaggeredGridError) {
                return const Center(child: Text('Error!'));
              }

              if (state is StaggeredGridLoaded) {
                return StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: state.gridItems
                      .map(
                        (e) => _StaggeredGridCell(
                          gridItem: e,
                        ),
                      )
                      .toList(),
                );
              }

              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}

class _StaggeredGridCell extends StatelessWidget {
  const _StaggeredGridCell({
    required this.gridItem,
    Key? key,
  }) : super(key: key);

  final GridItem gridItem;

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: gridItem.crossAxisSize,
      mainAxisCellCount: gridItem.mainAxisSize,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(gridItem.title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
