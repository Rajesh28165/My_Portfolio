import '../../Util/colors.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Util/scaling.dart';

class NavigationButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onBtnPress;
  final double? height, width, aboveSpace, belowSpace, fontSize;
  final Color? activeBgColor, deActiveBgColor, foregroundColor, activeTextColor, deActiveTextColor, borderColor;
  final FontWeight? fontWeight;
  final bool canNavigate;


  const NavigationButton({
    super.key, 
    required this.text,
    this.height,
    this.width,
    this.textStyle,
    this.fontSize,
    this.fontWeight,
    this.activeTextColor = Colors.white,
    this.deActiveTextColor = Colors.white,
    this.onBtnPress,
    this.activeBgColor = WidgetColors.activeCta,
    this.deActiveBgColor = WidgetColors.gray_86,
    this.foregroundColor,
    this.borderColor,
    this.canNavigate = false,
    this.aboveSpace,
    this.belowSpace,
  });

  @override
  Widget build(BuildContext context) {

    final Color? bgColor = canNavigate ? activeBgColor : deActiveBgColor;
    final Color? textColor = canNavigate ? activeTextColor : deActiveTextColor;

    return Column(
      children: [
        SizedBox(height: context.getPercentHeight(aboveSpace ?? 1)),
        SizedBox(
          height: context.getPercentHeight(height ?? 6),
          width: context.getPercentWidth(width ?? 80),
          child: ElevatedButton(
            onPressed: canNavigate ? onBtnPress :() {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(bgColor),
              foregroundColor: MaterialStateProperty.all(foregroundColor ?? WidgetColors.black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: borderColor ?? Colors.transparent),
                ),
              ),
            ),
            child: Text(
              text,
              style: textStyle ?? TextStyle(
                fontSize: fontSize ?? 14,
                fontWeight: fontWeight ?? FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
        ),
        SizedBox(height: context.getPercentHeight(belowSpace ?? 1)),
      ],
    );
  }
}
