import 'package:flutter/material.dart';
import '../../Util/scaling.dart';
import '../../Util/colors.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final TextStyle? titleTextStyle;
  final Color? backgroundColor;
  final bool? centerTitle;
  final List<Widget>? actions;
  final Widget? leading;
  final double? height;
  final double? elevation;
  final bool showBackButton;

  const CustomAppBar({
    super.key,
    required this.title,
    this.titleTextStyle,
    this.backgroundColor,
    this.centerTitle,
    this.actions,
    this.leading,
    this.height,
    this.elevation,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    final double resolvedHeight = context.getPercentHeight(height ?? 10);

    return SizedBox(
      height: resolvedHeight,
      child: AppBar(
        backgroundColor: backgroundColor ?? WidgetColors.gray_91,
        title: Text(
          title,
          style: titleTextStyle ??
            const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: WidgetColors.black,
            ),
        ),
        centerTitle: centerTitle ?? true,
        elevation: elevation ?? 0,
        actions: actions,
        leading: leading ?? (
          showBackButton ? IconButton(
            icon: const Icon(Icons.arrow_back, color: WidgetColors.black),
            onPressed: () => Navigator.of(context).pop(),
          ) : null
        ),
      )
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight);
}

