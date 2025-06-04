import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/infrastructure/navigation/routes.dart';
import 'package:banyuone/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class HomeMenu extends GetView<HomeController> {
  const HomeMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsName.darkBlueGray.withOpacity(1),
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            childAspectRatio: 1.3,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [
              HomeMenuItem(
                title: 'Bansos', 
                icon: Icons.public_rounded,
                onTap: () => Get.toNamed(Routes.BANSOS),
              ),
              HomeMenuItem(
                title: 'Inventory', 
                icon: Icons.save,
                onTap: () => Get.toNamed(Routes.INVENTORY),
              ),
              HomeMenuItem(
                title: 'Pelayanan',
                icon: Icons.call,
                onTap: () => Get.toNamed(Routes.PELAYANAN),
              ),
              HomeMenuItem(
                title: 'Prof',
                icon: Icons.person_2_sharp,
                onTap: () => Get.toNamed(Routes.PROFILE),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeMenuItem extends StatelessWidget {
  const HomeMenuItem({super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                InkWell(
                  onTap: onTap,
                  child: Container(
                    width: constraints.maxHeight,
                    height: constraints.maxHeight,
                    decoration: BoxDecoration(
                      color: ColorsName.mintGreen,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Icon(icon, color: Colors.white, size: 21.sp),
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
        SizedBox(height: 5.h),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: BaseText.white.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
