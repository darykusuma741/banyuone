import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/inventory.controller.dart';

class InventoryScreen extends GetView<InventoryController> {
  const InventoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'inventory',
      ),
      backgroundColor: ColorsName.iceBlue,
      body: const Center(
        child: Text(
          'InventoryScreen is working',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
