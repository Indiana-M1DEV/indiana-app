import 'package:flutter/material.dart';

import 'package:Indiana/app/config/routes.dart';
import 'package:Indiana/app/views/home_page.dart';
import 'package:Indiana/app/views/login_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case GenericRoutes.homeRoute:
      return MaterialPageRoute(builder: (context) => const HomePage());
    case AuthRoutes.loginRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    // case GenericRoutes.mapRoute:
    //   return MaterialPageRoute(builder: (context) => const MapPage());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}'))));
  }
}
