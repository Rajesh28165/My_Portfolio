import 'package:flutter/material.dart';
import 'package:portfolio/Router/route_constants.dart';
import 'package:portfolio/Screens/aboutScreen.dart';
import 'package:portfolio/Screens/educationScreen.dart';
import 'package:portfolio/Screens/landingScreen.dart';
import 'package:portfolio/Screens/personalScreen.dart';
import 'package:portfolio/Screens/professionalScreen.dart';

import '../Screens/homeScreen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RouteConstants.landing:
        return MaterialPageRoute(builder: (_) => const LandingPage());

      case RouteConstants.home:
        return MaterialPageRoute(builder: (_) => const HomePage());

      case RouteConstants.about:
        return MaterialPageRoute(builder: (_) => const About());

      case RouteConstants.personal:
        return MaterialPageRoute(builder: (_) => const PersonalDetail());

      case RouteConstants.education:
        return MaterialPageRoute(builder: (_) => const EducationDetail());

      case RouteConstants.professional:
        return MaterialPageRoute(builder: (_) => const ProffesionalDetail());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Page Not Found'),
            ),
          )
        );
    }
  }
}