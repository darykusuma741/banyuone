import 'package:banyuone/common/static/scaleocean/base_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomErrorText extends StatelessWidget {
  const CustomErrorText({super.key, required this.error});
  final String? error;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5.h),
        Row(
          children: [
            // SvgPicture.asset(
            //   height: 10.h,
            //   ImageAssets.iconSvgInfo,
            //   colorFilter: ColorFilter.mode(ColorsNameScaleOcean.redTomato, BlendMode.srcIn),
            // ),
            // SizedBox(width: 4.w),
            Expanded(
              child: Text(
                error ?? 'Error',
                style: BaseTextScaleOcean.redTomato.copyWith(fontSize: 11.sp),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        )
      ],
    );
  }
}
