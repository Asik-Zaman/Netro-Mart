import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.w),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/ban_.png',
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8.r)),
      height: 100.h,
      width: 234.w,
    );
  }
}
