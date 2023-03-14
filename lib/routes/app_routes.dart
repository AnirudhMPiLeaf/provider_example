import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider_example/screens/consumer.dart';
import 'package:provider_example/screens/home.dart';

class AppRoutes {
  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case 'home':
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case 'consumer':
        return MaterialPageRoute(builder: (context) => const ConsumerScreen());
      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
