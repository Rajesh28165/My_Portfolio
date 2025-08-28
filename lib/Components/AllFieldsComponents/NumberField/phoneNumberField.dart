import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../Constants/constants.dart';
import '../BaseField/baseTextField.dart';

class PhoneNumberTextField extends StatelessWidget {
  final String? labelText, hintText, errorText;
  final TextStyle? hintStyle, labelStyle, errorStyle, inputTextstyle;
  final String? allowedExpression, deniedExpression;
  final int? maxInputLength;
  final bool? autofocus;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  
  const PhoneNumberTextField({
    super.key,
    required this.controller,
    this.labelText,
    this.hintText,
    this.errorText,
    this.hintStyle,
    this.labelStyle,
    this.errorStyle,
    this.inputTextstyle,
    this.autofocus,
    this.validator,
    this.onChanged,
    this.inputFormatters,
    this.allowedExpression,
    this.deniedExpression,
    this.maxInputLength,
    this.keyboardType,    
  });

  @override
  
  Widget build(BuildContext context) {
    return BaseTextField(
      controller: controller,
      labelText: labelText?? 'Phone Number',
      hintText: hintText?? 'Enter your phone number',
      inputTextstyle: inputTextstyle ?? const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      labelStyle: labelStyle ?? const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
      hintStyle: hintStyle ?? const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
      onChanged: onChanged ?? (value) => _formattingPhoneNumber(value),
      validator: validator?? PhoneNumberFormatter.validatePhoneNumber,
      autofocus: autofocus?? false,
      keyboardType: keyboardType ?? TextInputType.phone,
      maxInputLength: maxInputLength?? 10,
      allowedExpression: allowedExpression ?? RegexConstants.ONLY_NUMBERS,
    );
  }

  void _formattingPhoneNumber(String value) {
    PhoneNumberFormatter.applyPhoneNumberFormating(controller);
    if (onChanged != null) onChanged!(value);
  }
}


class PhoneNumberFormatter {

  static String formatPhoneNumber(String phoneNumber) {
    final raw = phoneNumber.replaceAll(RegExp(RegexConstants.NON_NUMERIC), "");
    final buffer = StringBuffer();
    for (int i = 0; i < raw.length && i < 10; i++) {
      if(i == 0) buffer.write('(');
      if(i == 3) buffer.write(')-');
      if(i == 6) buffer.write('-');
      buffer.write(raw[i]);
    }
    return buffer.toString();
  }

  static void applyPhoneNumberFormating(TextEditingController controller){
    final oldText = controller.text;
    final oldCursorPos = controller.selection.baseOffset;
    final formatted = formatPhoneNumber(oldText);
    int newCursorPos = oldCursorPos;
    int digitBeforeCursor = 0;

    for(int i=0; i < oldCursorPos && i < oldText.length; i++){
      if (RegExp(RegexConstants.DIGIT).hasMatch(oldText[i])) {
        digitBeforeCursor++;
      }
    }

    int digitCount = 0;
    newCursorPos = 0;

    for (int i=0; i < formatted.length; i++) {
      if(RegExp(RegexConstants.DIGIT).hasMatch(formatted[i])){
        digitCount++;
      }
      newCursorPos++;
      if(digitCount >= digitBeforeCursor) break;
    }

    controller.value = TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: newCursorPos),
    );

  }

  static String? validatePhoneNumber(String? value) {
    final trimmedValue = value?.trim().replaceAll(RegExp(RegexConstants.NON_NUMERIC), '');
    
    if (trimmedValue == null) {
      return 'phone number must be exactly 10 digits';
    }
    if (trimmedValue.isNotEmpty && trimmedValue[0] == '0') {
      return "phone number cannot start with 0";
    }
    if (trimmedValue.length <10) {
      return 'phone number must be exactly 10 digits';
    }

    return null;
  }
}