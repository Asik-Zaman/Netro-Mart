import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarosalBanner extends StatelessWidget {
  final String image;
  const CarosalBanner({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 124.h,
          width: 234.w,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(12.r)),
        ),
      ],
    );
  }
}
