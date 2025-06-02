import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.body});
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsName.white,
      body: body,
    );
  }
}
