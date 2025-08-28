import 'package:flutter/material.dart';
import '../../Util/styles.dart';

class CustomDropdown<T> extends StatelessWidget {
  final List<T> menuItems;
  final T? value;
  final String? labelText;
  final String? hintText;
  final ValueChanged<T?>? onChanged;
  
  const CustomDropdown({
    super.key,
    required this.menuItems,
    this.value,
    this.labelText = "",
    this.hintText = "",
    this.onChanged
  });

  Widget _buildLabel() {
    if (labelText == null || labelText == "") {
      return const SizedBox.shrink();
    } else {
      return Text(
        labelText!,
        style:MyStyles.labelStyle()
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildLabel(),
        DropdownButtonFormField<T>(
          value: value,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          hint: Text(hintText!),
          items: menuItems.map(
            (item) => DropdownMenuItem<T>(
              value: item,
              child: Text(item.toString())
            )
          ).toList(),
          onChanged: onChanged
        )
      ],
    );
  }
}