import 'package:flutter/material.dart';
import 'package:portfolio/Util/scaling.dart';

class TextedButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onButtonPress;
  final double? fontSize, textHeight, aboveSpace, belowSpace;
  final Color? textColor;
  final FontWeight? fontWeight;
  final bool textUnderline;
  final double? leftPadding, rightPadding, topPadding, bottomPadding;
  
  const TextedButton({
    super.key,
    required this.text,
    this.textStyle,
    this.onButtonPress,
    this.fontSize,
    this.textColor,
    this.fontWeight,
    this.textHeight,
    this.textUnderline = false,
    this.aboveSpace,
    this.belowSpace,
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.bottomPadding
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.getPercentWidth(leftPadding ?? 0),
        right: context.getPercentWidth(rightPadding ?? 0),
        top: context.getPercentHeight(topPadding ?? 0),
        bottom: context.getPercentHeight(bottomPadding ?? 0),
      ),
      child: Column(
        children: [ 
          SizedBox(height: context.getPercentHeight(aboveSpace ?? 1)),
          GestureDetector(
            onTap: onButtonPress,
            behavior: HitTestBehavior.translucent,
            child: Text(
              text,
              style: textStyle ??
                TextStyle(
                  fontSize: fontSize ?? 14,
                  fontWeight: fontWeight ?? FontWeight.w400,
                  height: textHeight,
                  color: textColor ?? Colors.grey,
                  decoration: textUnderline ? TextDecoration.underline: TextDecoration.none,
                ),
            )
          ),
          SizedBox(height: context.getPercentHeight(belowSpace ?? 1)),
        ],
      ),
    );
  }
}