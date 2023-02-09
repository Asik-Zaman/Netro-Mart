import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerCard extends StatelessWidget {
  final String image;
  const BannerCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8.r)),
          height: 100.h,
          width: 234.w,
        ),
      ],
    );
  }
}
