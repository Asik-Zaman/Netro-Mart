import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SponsoredCard extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  const SponsoredCard(
      {super.key,
      required this.title,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124.h,
      width: 101.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
                blurRadius: 25,
                offset: Offset(0, 5),
                color: Color(0xff000000).withOpacity(.05))
          ]),
      child: Column(
        children: [
          Container(
            height: 79.h,
            width: 101.33.w,
            decoration: BoxDecoration(
              color: Color(0xffE9F1F4),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  topRight: Radius.circular(8.r)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 48.h,
                  width: 48.w,
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 45.h,
            width: 101.33.w,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r)),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 8.w, top: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Running shoe',
                    style: TextStyle(
                        color: Color(0xff264653),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    '\$${price}',
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: Color(0xff2A9D8F),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
