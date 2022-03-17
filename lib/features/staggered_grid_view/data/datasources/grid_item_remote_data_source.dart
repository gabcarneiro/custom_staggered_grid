import 'dart:convert';
import 'dart:math';

import 'package:custom_staggered_grid/features/staggered_grid_view/data/serializers/grid_item_serializer.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/domain/entities/grid_item.dart';

// ignore: one_member_abstracts
abstract class GridItemRemoteDataSource {
  Future<List<GridItem>> fetchGridItems();
}

class GridItemRemoteDataSourceImpl implements GridItemRemoteDataSource {
  @override
  Future<List<GridItem>> fetchGridItems() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));

    final randomJson = [
      mockJson1,
      mockJson2,
      mockJson3,
    ][Random().nextInt(2)];

    final json = jsonDecode(randomJson) as Iterable<dynamic>;
    final serializer = GridItemSerializer();

    return json
        .map((dynamic e) => serializer.from(e as Map<String, dynamic>))
        .toList();
  }
}

const mockJson1 = '''
[
  {
    "title": "Feature A",
    "feature": "featureA",
    "backgroundColor": "",
    "iconUrl": "",
    "backgroundImage": "",
    "crossAxisSize": 1,
    "mainAxisSize": 1
  },
  {
    "title": "Feature B",
    "feature": "featureB",
    "backgroundColor": "",
    "iconUrl": "",
    "backgroundImage": "",
    "crossAxisSize": 1,
    "mainAxisSize": 2
  },
    {
    "title": "Feature C",
    "feature": "featureC",
    "backgroundColor": "",
    "iconUrl": "",
    "backgroundImage": "",
    "crossAxisSize": 1,
    "mainAxisSize": 1
  }
]''';

const mockJson2 = '''
[
  {
    "title": "Feature A",
    "feature": "featureA",
    "backgroundColor": "",
    "iconUrl": "",
    "backgroundImage": "",
    "crossAxisSize": 2,
    "mainAxisSize": 1
  },
  {
    "title": "Feature B",
    "feature": "featureB",
    "backgroundColor": "",
    "iconUrl": "",
    "backgroundImage": "",
    "crossAxisSize": 1,
    "mainAxisSize": 1
  },
    {
    "title": "Feature C",
    "feature": "featureC",
    "backgroundColor": "",
    "iconUrl": "",
    "backgroundImage": "",
    "crossAxisSize": 1,
    "mainAxisSize": 1
  }
]''';

const mockJson3 = '''
[
  {
    "title": "Feature A",
    "feature": "featureA",
    "backgroundColor": "",
    "iconUrl": "",
    "backgroundImage": "",
    "crossAxisSize": 1,
    "mainAxisSize": 1
  },
  {
    "title": "Feature B",
    "feature": "featureB",
    "backgroundColor": "",
    "iconUrl": "",
    "backgroundImage": "",
    "crossAxisSize": 1,
    "mainAxisSize": 1
  },
    {
    "title": "Feature C",
    "feature": "featureC",
    "backgroundColor": "",
    "iconUrl": "",
    "backgroundImage": "",
    "crossAxisSize": 2,
    "mainAxisSize": 1
  }
]''';
