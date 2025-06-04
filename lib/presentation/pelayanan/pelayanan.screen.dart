import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/pelayanan.controller.dart';

class PelayananScreen extends GetView<PelayananController> {
  const PelayananScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'pelayanan',
      ),
      backgroundColor: ColorsName.iceBlue,
      body: const Center(
        child: Text(
          'PelayananScreen is working',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
