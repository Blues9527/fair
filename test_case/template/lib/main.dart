import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import 'package:template/home_page.dart';
import '';

import 'src/generated.fair.dart' as g;

@FairBinding(packages: [
  'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart',
  'package:smooth_star_rating_nsafe/smooth_star_rating.dart'
])
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FairApp.runApplication(
    getApp(),
  );
}

FairApp getApp() => FairApp(
      generated: g.AppGeneratedModule(),
      child: MaterialApp(
        color: Colors.blue,
        home: HomePage(),
      ),
    );
