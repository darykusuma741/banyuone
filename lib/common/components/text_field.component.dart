import 'package:banyuone/common/static/scaleocean/base_text.dart';
import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({super.key, this.borderColor, this.styleLabel, this.fillColor, this.hintText, this.hintStyle, this.label});
  final Color? borderColor;
  final Color? fillColor;
  final String? hintText;
  final String? label;
  final TextStyle? hintStyle;
  final TextStyle? styleLabel;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder? border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: borderColor ?? Colors.white, width: 1.0),
    );
    border = borderColor == null ? null : border;
    final requiredStyle = BaseTextScaleOcean.redCherry.copyWith(fontSize: 12.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Row(
            children: [
              Text(label!, style: styleLabel),
              Text(' *', style: requiredStyle), // Tanda wajib isi
            ],
          ),
        if (label != null) SizedBox(height: 5.0),
        TextField(
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
        ),
      ],
    );
  }
}
