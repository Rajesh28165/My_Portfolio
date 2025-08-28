import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../Constants/constants.dart';
import '../BaseField/baseTextField.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? labelText, hintText, errorText;
  final String? allowedExpression, deniedExpression;
  final int? maxInputLength;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final bool? obscureText, autofocus;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onChanged;

  const EmailTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.errorText,
    this.validator,
    this.inputFormatters,
    this.contentPadding,
    this.obscureText,
    this.autofocus,
    this.onChanged,
    this.allowedExpression,
    this.deniedExpression,
    this.maxInputLength
  });

  @override
  Widget build(BuildContext context) {
    return BaseTextField(
      labelText: labelText ?? "E-mail Id",
      hintText: hintText ?? "Please enter your e-mail",
      validator: validator ?? validateEmail,
      controller: controller,
      obscureText: obscureText,
      errorText: null,
      onChanged: onChanged,
      autofocus: autofocus ?? false,
      keyboardType: TextInputType.emailAddress,
      deniedExpression: RegexConstants.FORWARD_BACKWARD_SLASH,
      maxInputLength: 50,
    );
  }

  String? validateEmail(String? value) {
    final regex = RegExp(RegexConstants.EMAIL_ADDRESS_PATTERN);    
    final trimmedValue = value?.trim();
    final error = errorText?.trim();
    if (trimmedValue == null || trimmedValue.isEmpty) {
      return 'Please enter your e-mail';
    } else if (!regex.hasMatch(trimmedValue)) {
      return 'Please enter a valid e-mail address';
    } else if(error != null && error.isNotEmpty) {
      return error;
    }
    return null;
  }
}
