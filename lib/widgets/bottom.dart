import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      width: 360.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r), topRight: Radius.circular(24.r)),
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
                blurRadius: 30,
                offset: Offset(5, 0),
                color: Color(0xff000000).withOpacity(.09))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF2A9D8F)),
            child: Center(
                child: Image.asset(
              'assets/images/nav_home.png',
              fit: BoxFit.contain,
            )),
          ),
          Container(
            height: 21.h,
            width: 20.w,
            child: Image.asset(
              'assets/images/nav_bell.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            height: 21.h,
            width: 20.w,
            child: Image.asset(
              'assets/images/nav_cart.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            height: 21.h,
            width: 20.w,
            child: Image.asset(
              'assets/images/nav_msg.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            height: 21.h,
            width: 20.w,
            child: Image.asset(
              'assets/images/nav_profile.png',
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
