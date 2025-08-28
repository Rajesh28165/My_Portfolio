import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/Constants/constants.dart';
import 'package:portfolio/Util/scaling.dart';
import 'package:portfolio/Util/styles.dart';

import 'baseTextFieldCubit.dart';

class BaseTextField extends StatelessWidget {
  final String? hintText, labelText, errorText;
  final TextStyle? inputTextstyle, labelStyle, errorStyle, hintStyle;
  final bool? isEnabled, obscureText, isDense, autofocus;
  final String? obsecuringCharacter, counterText;
  final String? allowedExpression, deniedExpression;
  final int? maxInputLength;
  final EdgeInsetsGeometry? contentPadding;
  final AutovalidateMode? autovalidateMode;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final Color? cursorColor, backgroundColor;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final InputBorder? focusedBorder, enabledBorder, errorBorder, focusedErrorBorder;

  const BaseTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.errorText,
    this.inputTextstyle,
    this.labelStyle,
    this.hintStyle,
    this.errorStyle,
    this.onChanged,
    this.isEnabled,
    this.obscureText,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.obsecuringCharacter,
    this.controller,
    this.suffixIcon,
    this.contentPadding,
    this.cursorColor,
    this.counterText,
    this.isDense,
    this.autovalidateMode,
    this.autofocus,
    this.focusedBorder,
    this.enabledBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.allowedExpression,
    this.deniedExpression,
    this.maxInputLength,
    this.focusNode,
    this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BaseTextFieldCubit(initialObscureText: obscureText ?? false),
      child: Container(
        color: backgroundColor ?? Colors.transparent,
        padding: EdgeInsets.only(right: context.getPercentWidth(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelText ?? "",
              style: labelStyle ?? MyStyles.labelStyle(),
            ),
            SizedBox(height: context.getPercentHeight(1)),
            BlocBuilder<BaseTextFieldCubit, bool>(
              builder: (context, isObscured) {
                final cubit = context.read<BaseTextFieldCubit>();
                return TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: inputTextstyle ?? MyStyles.inputTextStyle(),
                  autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
                  controller: controller ?? cubit.controller,
                  validator: validator ?? BaseTextFieldCubit.validateField,
                  obscureText: obscureText == true ? isObscured: false,
                  obscuringCharacter: obsecuringCharacter ?? "*",
                  enabled: isEnabled ?? true,
                  inputFormatters: inputFormatters ?? 
                    [
                      FilteringTextInputFormatter.allow(RegExp(allowedExpression ?? RegexConstants.ANY_CHARACTER)),
                      if(deniedExpression != null)
                        FilteringTextInputFormatter.deny(RegExp(deniedExpression!)),
                      if(maxInputLength != null)
                        LengthLimitingTextInputFormatter(maxInputLength),
                    ],
                  keyboardType: keyboardType ?? TextInputType.text,
                  cursorColor: cursorColor ?? Colors.black,
                  autofocus: autofocus ?? false,
                  focusNode: focusNode,
                  onTap: onTap,
                  onChanged: onChanged ?? (value) {if (onChanged != null) onChanged!(value);},
                  decoration: InputDecoration(
                    hintText: hintText ?? "Enter your Details",
                    errorText: errorText,
                    hintStyle: hintStyle ?? MyStyles.hintStyle(),
                    errorStyle: errorStyle ?? MyStyles.errorStyle(),
                    isDense: true,
                    counterText: counterText ?? "",
                    contentPadding: contentPadding ?? EdgeInsets.only(bottom: context.getPercentHeight(0.1)),
                    suffixIcon: suffixIcon ??
                      (obscureText != null
                        ? IconButton(
                          icon: Icon(
                            isObscured ? Icons.visibility : Icons.visibility_off,
                            color: const Color.fromARGB(255, 31, 30, 30)
                          ),
                          onPressed: () => cubit.toggleObscureText(),
                        ) : null
                      ),
                    focusedBorder: focusedBorder?? const UnderlineInputBorder(borderSide:BorderSide(width: 2, color: Colors.black)),
                    enabledBorder: enabledBorder?? const UnderlineInputBorder(borderSide:BorderSide(width: 1, color: Colors.black)),
                    errorBorder: errorBorder?? const UnderlineInputBorder(borderSide:BorderSide(width: 1, color: Colors.red)),
                    focusedErrorBorder: focusedErrorBorder?? const UnderlineInputBorder(borderSide:BorderSide(width: 2, color: Colors.red)),
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
