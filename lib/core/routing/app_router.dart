import 'package:flutter/material.dart';
import 'package:learn_cubit/core/routing/routes.dart';
import 'package:learn_cubit/featuers/login/ui/screen/login_screen.dart';
import 'package:learn_cubit/featuers/onBording/onbording_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (_) => const OnBordingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                    body: Center(
                  child: Text("No route defined for ${settings.name}"),
                )));
    }
  }
}
