import 'package:flutter/material.dart';

extension BuildContextExtensionFunctions on BuildContext {

  double getWidth() => MediaQuery.of(this).size.width;

  double getHeight() => MediaQuery.of(this).size.height;

  double getPercentWidth(double percentage) => getWidth() * percentage * 0.01;

  double getPercentHeight(double percentage) => getHeight() * percentage * 0.01;
  
}