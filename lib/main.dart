import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/routes/route_generator.dart';
import 'package:sizer/sizer.dart';

void main() async {
  RenderErrorBox.backgroundColor = Colors.transparent;
  RenderErrorBox.textStyle = ui.TextStyle(color: Colors.transparent);

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          title: 'TAQA - BTMS',
          theme:
              ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.white),
          debugShowCheckedModeBanner: false,
          initialRoute: AppNavRoutes.initialRoute,
          navigatorKey: AppNavigation.navigatorKey,
          onGenerateRoute: RouteGenerator.generateRoute);
    });
  }
}
