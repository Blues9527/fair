import 'dart:io';

import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:best_flutter_ui_templates/plugins/net/fair_net_plugin.dart';
import 'package:fair/fair.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'navigation_home_screen.dart';
import 'src/generated.fair.dart' as p;

@FairBinding(packages: [
  'package:font_awesome_flutter/font_awesome_flutter.dart',
  'package:flutter_rating_bar/flutter_rating_bar.dart',
])
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => FairApp.runApplication(
        MyApp(),
        plugins: {'FairNet': FairNet()},
      ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return FairApp(
      child: MaterialApp(
        title: 'Flutter UI',
        debugShowCheckedModeBanner: true,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: AppTheme.textTheme,
          platform: TargetPlatform.iOS,
        ),
        home: NavigationHomeScreen(),
      ),
      generated: p.AppGeneratedModule(),
    );
  }
}