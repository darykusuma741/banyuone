import 'package:banyuone/common/static/scaleocean/base_text.dart';
import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({super.key, this.borderColor, this.textArea = false, this.styleLabel, this.fillColor, this.hintText, this.hintStyle, this.label});
  final Color? borderColor;
  final Color? fillColor;
  final String? hintText;
  final String? label;
  final TextStyle? hintStyle;
  final TextStyle? styleLabel;
  final bool textArea;

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder? border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: borderColor ?? Colors.white, width: 1.0),
    );
    border = borderColor == null ? null : border;
    final requiredStyle = BaseTextScaleOcean.redCherry.copyWith(fontSize: 11.0, wordSpacing: 0.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label!, style: styleLabel),
              Text(' *', style: requiredStyle), // Tanda wajib isi
            ],
          ),
        if (label != null) SizedBox(height: 5.0),
        TextField(
          maxLines: textArea ? null : 1, // biar unlimited height (auto expand)
          minLines: textArea ? 5 : null, // tinggi minimum 5 baris
          decoration: InputDecoration(
            filled: true,
            hintText: hintText,
            hintStyle: hintStyle,
            constraints: BoxConstraints(maxHeight: textArea ? 84.0 : 42.0),
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: textArea ? 10.0 : 0.0),
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
