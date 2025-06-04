import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/bansos.controller.dart';

class BansosScreen extends GetView<BansosController> {
  const BansosScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'bansos',
      ),
      backgroundColor: ColorsName.iceBlue,
      body: const Center(
        child: Text(
          'BansosScreen is working',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
