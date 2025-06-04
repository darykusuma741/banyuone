import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.body, this.appBar, this.light = false, this.backgroundColor});
  final Widget? body;
  final bool light;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: light ? Brightness.light : Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor ?? ColorsName.white,
        appBar: appBar,
        body: body,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.bottom, this.backgroundColor, this.divider = true});
  final String title;
  final PreferredSizeWidget? bottom;
  final bool divider;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 56.0,
      backgroundColor: backgroundColor ?? Colors.white,
      surfaceTintColor: backgroundColor ?? Colors.white,
      title: Text(title),
      titleSpacing: 0.0,
      titleTextStyle: TextStyle(fontSize: 15.0, color: Colors.black),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 18.0,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      bottom: bottom ??
          PreferredSize(
            preferredSize: Size.fromHeight(2.0), // Ketebalan border
            child: Container(
              color: Colors.grey.shade300, // Warna border
              height: divider ? 0.5 : 0.0, // Ketebalan border
            ),
          ),
    );
  }

  @override
  Size get preferredSize {
    final bottomHeight = bottom?.preferredSize.height ?? 0.0;
    return Size.fromHeight(56.0 + bottomHeight);
  }
}
