import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({super.key, this.borderColor, this.fillColor, this.hintText, this.hintStyle});
  final Color? borderColor;
  final Color? fillColor;
  final String? hintText;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder? border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: borderColor ?? Colors.white, width: 1.0),
    );
    border = borderColor == null ? null : border;

    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        hintStyle: hintStyle,
        constraints: BoxConstraints(minHeight: 42.0),
        contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
        border: border,
        enabledBorder: border,
        errorBorder: border,
        focusedBorder: border,
        disabledBorder: border,
        fillColor: fillColor,
      ),
    );
  }
}
