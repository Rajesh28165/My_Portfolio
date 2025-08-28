import 'package:flutter/material.dart';
import 'package:portfolio/Router/route_constants.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      elevation: 8,
      child: SizedBox(
        height: 60,
        child: Center(
          child: IconButton(
            icon: const Icon(Icons.home, size: 30, color: Colors.blue),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                RouteConstants.landing,
                (route) => false
              );
            },
          ),
        ),
      ),
    );
  }
}
