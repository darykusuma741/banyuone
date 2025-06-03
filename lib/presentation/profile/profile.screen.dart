import 'package:banyuone/common/custom_scaffold.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/profile.controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'Profile',
        // title: const Text('ProfileScreen'),
        // centerTitle: true,
      ),
      backgroundColor: ColorsName.iceBlue,
      body: const Center(
        child: Text(
          'ProfileScreen is working',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
