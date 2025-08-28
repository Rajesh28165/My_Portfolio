import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseTextFieldCubit extends Cubit<bool>{
  final TextEditingController controller;

  BaseTextFieldCubit({
    bool initialObscureText = false,
    String? initialText,
    }): controller = TextEditingController(text: initialText),
        super(initialObscureText);

  void toggleObscureText() => emit(!state);

  static String? validateField(String? value) {
    final trimmedValue = value?.trim();
    if (trimmedValue == null || trimmedValue.isEmpty) {
      return 'Please enter a valid detail';
    }
    return null;
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}