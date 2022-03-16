import 'package:custom_staggered_grid/features/staggered_grid_view/domain/entities/grid_item.dart';
import 'package:custom_staggered_grid/shared/data/serializers/serializer.dart';

class GridItemSerializer implements Serializer<GridItem, Map<String, dynamic>> {
  @override
  GridItem from(Map<String, dynamic> json) {
    return GridItem(
      title: json['title'] as String,
      backgroundColor: json['backgroundColor'] as String,
      iconUrl: json['backgroundColor'] as String,
      backgroundImage: json['backgroundColor'] as String,
      crossAxisSize: json['crossAxisSize'] as int,
      mainAxisSize: json['mainAxisSize'] as int,
    );
  }

  @override
  // ignore: type_annotate_public_apis
  Map<String, dynamic> to(object) {
    // TODO(gabriel): implement to
    throw UnimplementedError();
  }
}
