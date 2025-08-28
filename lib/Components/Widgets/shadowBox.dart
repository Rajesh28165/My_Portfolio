import 'package:flutter/material.dart';
import 'package:portfolio/Util/scaling.dart';

class ShadowBox extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final Color backgroundColor;
  final Color textColor;
  final Function()? onTap;

  const ShadowBox({
    super.key,
    required this.text,
    this.onTap,
    this.width,
    this.height,
    this.fontSize = 18,
    this.fontStyle = FontStyle.italic,
    this.textColor = Colors.black,
    this.fontWeight = FontWeight.bold,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: context.getPercentHeight(height ?? 20),
        width: context.getPercentWidth(width ?? 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 15,  
              spreadRadius: 5,
              offset: const Offset(5, 8),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: context.getPercentWidth(4),
            right: context.getPercentWidth(4),
            top: context.getPercentHeight(1),
            bottom: context.getPercentHeight(1),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              color: textColor
            ),
          ),
        ),
      ),
    );
  }
}
