import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({super.key, this.bgColor = Colors.white, this.onTap, this.style, this.title});
  final Color? bgColor;
  final TextStyle? style;
  final String? title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 42.0,
        decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8.0)),
        child: Center(
          child: Text(title ?? 'Button', style: style ?? TextStyle(color: Colors.orange)),
        ),
      ),
    );
  }
}
