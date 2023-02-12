import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';

class MyButton extends StatefulWidget {
  final Color color;
  final Color textColor;
  final void Function()? onPressed;
  final String text;
  final Color borderColor;
  MyButton(
      {required this.onPressed,
      required this.text,
      required this.color,
      this.borderColor = AppColors.background,
      required this.textColor});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: 50.h,
        width: 296.w,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: widget.borderColor)),
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: widget.textColor,
          ),
        )),
      ),
    );
  }
}
