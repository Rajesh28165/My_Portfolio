import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  
  const HeaderWidget(
    this.title,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}