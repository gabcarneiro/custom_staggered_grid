import 'package:custom_staggered_grid/features/feature_a/presentation/feature_a_page.dart';
import 'package:custom_staggered_grid/features/feature_b/presentation/feature_b_page.dart';
import 'package:custom_staggered_grid/features/feature_c/presentation/feature_a_page.dart';
import 'package:custom_staggered_grid/features/staggered_grid_view/presentation/staggered_grid_page.dart';
import 'package:custom_staggered_grid/shared/presentation/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.staggeredGrid:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const StaggeredGridPage(),
        );
      case Routes.featureA:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const FeatureAPage(),
        );
      case Routes.featureB:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const FeatureBPage(),
        );
      case Routes.featureC:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const FeatureCPage(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
