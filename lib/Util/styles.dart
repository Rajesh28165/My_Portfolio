import 'package:flutter/material.dart';

class MyStyles {

  static TextStyle inputTextStyle() {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w900,
      color: Colors.black,
    );
  }

  static TextStyle labelStyle() {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w900,
      color: Colors.black
    );
  }

  static TextStyle hintStyle() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.grey
    );
  }
 
  static TextStyle errorStyle() {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
      color: Colors.red
    );
  }

}