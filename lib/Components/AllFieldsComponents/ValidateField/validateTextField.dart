import 'package:flutter/material.dart';
import '../BaseField/baseTextField.dart';

class ValidateTextField extends StatelessWidget {
  final TextEditingController controller, compareWithController;
  final String? labelText, hintText, errorText;
  final String? allowedExpression, deniedExpression;
  final int? maxInputLength;
  final TextStyle? labelStyle, hintStyle, errorStyle;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Function(String)? onChanged;

  const ValidateTextField({
    super.key,
    required this.controller,
    required this.compareWithController,
    this.labelText,
    this.hintText,
    this.errorText,
    this.labelStyle,
    this.hintStyle,
    this.errorStyle,
    this.keyboardType,
    this.onChanged,
    this.allowedExpression,
    this.deniedExpression,
    this.maxInputLength,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return BaseTextField(
      controller: controller,
      labelText: labelText ?? "Confirm your details",
      hintText: hintText ?? "Re-enter your details",
      errorText: null,
      labelStyle: labelStyle,
      hintStyle: hintStyle,
      errorStyle: errorStyle,
      validator: (value) => _validate(value, compareWithController.text),
      keyboardType: keyboardType ?? TextInputType.text,
      onChanged: onChanged,
      maxInputLength:maxInputLength ?? (compareWithController.text.isNotEmpty ? compareWithController.text.length : null),
      obscureText: obscureText,
      allowedExpression: allowedExpression,
      deniedExpression: deniedExpression,
    );
  }

  String? _validate(String? value, String? compareWith) {
    final current = value?.trim() ?? "";
    final original = compareWith?.trim() ?? "";
    if (current.isEmpty) {
      return "This field can't be empty";
    } else {
      for (int i=0; i<current.length; i++){
        if (i >= original.length || current[i] != original[i]) {
          return errorText ?? "Details are not matching";
        }
      }
      return null;
    }
  }

}