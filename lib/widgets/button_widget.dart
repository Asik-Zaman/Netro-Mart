import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget getTextField({required String hint}) {
  final scaffoldColor = Color(0xffFFFFFF);
  final hintColor = Color(0xff6C6C6C);
  final boderColor = Color(0xffE9F1F4);

  return TextField(
    decoration: InputDecoration(
        prefixIcon: SvgPicture.asset('assets/images/Search.svg'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: boderColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: boderColor, width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        filled: true,
        fillColor: scaffoldColor,
        hintText: hint,
        hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'Sora',
            color: hintColor)),
  );
}
