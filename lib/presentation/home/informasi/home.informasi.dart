import 'package:banyuone/common/static/base_text.dart';
import 'package:banyuone/common/static/colors_name.dart';
import 'package:banyuone/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeInformasi extends GetView<HomeController> {
  const HomeInformasi({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text('Informasi', style: BaseText.darkBlueGray.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w600)),
          ),
          // SizedBox(height: 10.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 8.w,
              children: [
                SizedBox(width: 8.w),
                HomeInformasiItem(
                  title: '3 LAYANAN telah selesai hari ini, 19 Mei 2025',
                  enable: true,
                ),
                HomeInformasiItem(
                  title: '2 LAYANAN telah selesai hari ini, 21 Mei 2025',
                  enable: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeInformasiItem extends StatelessWidget {
  const HomeInformasiItem({super.key, required this.title, required this.enable});
  final String title;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230.w,
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(color: enable ? ColorsName.darkBlueGray : Colors.white, borderRadius: BorderRadius.circular(16.r), boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5.r),
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: (enable ? BaseText.white : BaseText.darkBlueGray).copyWith(fontSize: 13.sp, height: 1.3, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
