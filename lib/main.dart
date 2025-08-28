import 'package:flutter/material.dart';
import 'package:portfolio/Util/colors.dart';
import 'package:portfolio/Router/router.dart';
import 'package:portfolio/Router/route_constants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: WidgetColors.white
      ),
      initialRoute: RouteConstants.landing,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}