import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarosalBanner extends StatelessWidget {
  const CarosalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124.h,
      width: 234.w,
      margin: EdgeInsets.only(right: 16.w),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Carosal_banner.png'),
              fit: BoxFit.cover),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12.r)),
    );
  }
}
