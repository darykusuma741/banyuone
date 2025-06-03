import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.body, this.light = false, this.backgroundColor});
  final Widget? body;
  final bool light;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: light ? Brightness.light : Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor ?? ColorsName.white,
        // appBar: AppBar(),
        body: body,
      ),
    );
  }
}
