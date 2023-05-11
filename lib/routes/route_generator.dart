import 'package:flutter/material.dart';
import 'package:locally_app/features/bottomNavBar/view/screen/bottom_navbar_screen.dart';
import 'package:locally_app/features/login/view/screen/login_screen.dart';
import 'package:locally_app/features/splash/view/screen/splash_screen.dart';
import 'package:locally_app/widgets/error/error_widget.dart';

import 'app_navigation_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case AppNavRoutes.initialRoute:
        return routeScreen(child: const SplashScreen());
      case AppNavRoutes.homeRoute:
        return routeScreen(child: const BottomNavBarScreenUI());
      case AppNavRoutes.loginRoute:
        return routeScreen(child: const LoginScreenUI());
     
      case AppNavRoutes.defaultErrorScreen:
        return routeScreen(
            child: DefaultErrorScreen(
          onPressed: (() {}),
        ));
     
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return DefaultErrorScreen(
        onPressed: (() {}),
      );
    });
  }

  static Route<dynamic> routeScreen(
      {Widget? child, bool fullScreenDialog = false}) {
    return MaterialPageRoute(
      builder: (context) => child!,
      fullscreenDialog: fullScreenDialog,
    );
  }
}
