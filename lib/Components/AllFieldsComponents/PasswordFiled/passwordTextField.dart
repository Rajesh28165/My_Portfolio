import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../Constants/constants.dart';
import '/Util/scaling.dart';
import '../BaseField/baseTextField.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? errorText, labelText, hintText;
  final TextStyle? errorStyle, labelStyle, hintStyle;
  final String? allowedExpression, deniedExpression;
  final int? maxInputLength;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscureText, isEnabled, autofocus;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;

  const PasswordTextField({
    super.key,
    required this.controller,
    this.obscureText,
    this.onChanged,
    this.errorText,
    this.labelText,
    this.hintText,
    this.errorStyle,
    this.labelStyle,
    this.hintStyle,
    this.validator,
    this.inputFormatters,
    this.isEnabled,
    this.contentPadding,
    this.suffixIcon,
    this.autofocus,
    this.allowedExpression,
    this.deniedExpression,
    this.maxInputLength,
  });

  String? _validatePassword(String? value) {
    final RegExp regex = RegExp(RegexConstants.PASSWORD_PATTERN);
    final trimmedValue = value?.trim();

    if (trimmedValue == null || trimmedValue.isEmpty) {
      return '';
    } else if (!regex.hasMatch(trimmedValue)) {
      return Constants.pswdError;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BaseTextField(
      labelText: labelText ?? "Password",
      hintText: hintText ?? "Enter your password",
      errorText: errorText,
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      errorStyle: errorStyle,
      validator: validator ?? _validatePassword,
      autofocus: autofocus ?? false,
      controller: controller,
      onChanged: onChanged,
      maxInputLength: maxInputLength,
      obscureText: obscureText ?? true,
      keyboardType: TextInputType.text,
      contentPadding: contentPadding ?? EdgeInsets.only(bottom: context.getPercentHeight(0.1)),
      isEnabled: isEnabled ?? true,
      inputFormatters: inputFormatters,
      suffixIcon: suffixIcon,
    );
  }
}
