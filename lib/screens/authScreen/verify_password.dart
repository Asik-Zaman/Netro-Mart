import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/authScreen/confirm_password.dart';

class VerifyPassword extends StatefulWidget {
  const VerifyPassword({super.key});

  @override
  State<VerifyPassword> createState() => _VerifyPasswordState();
}

class _VerifyPasswordState extends State<VerifyPassword> {
  bool isActive = false;
  bool buttonColor = false;
  late Timer _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.colorTextWhiteHigh,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios,
                    size: 18.sp, color: AppColors.descColor)),
            SizedBox(width: 13.w),
            Text(
              "Forgot password",
              style: TextStyle(
                  color: AppColors.descColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 32.w, right: 32.w, bottom: 56.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 41.5.h,
                ),
                Container(
                  height: 144.h,
                  width: 135.w,
                  child: SvgPicture.asset('assets/images/forgot_logo.svg'),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Enter your registered phone number or email below to receive password reset instruction.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 1.2,
                      color: Color(0xff919191),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  '0:' + _start.toString(),
                  style: TextStyle(
                      height: 1.2,
                      color: Color(0xff2A9D8F),
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _textFieldOTP(first: true, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: true),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmPassword()));
                  },
                  child: Container(
                    height: 50.h,
                    width: 296.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: isActive
                            ? AppColors.colorPrimaryMain
                            : AppColors.colorTextWhiteHigh,
                        border: Border.all(
                          color: isActive
                              ? AppColors.colorTextWhiteHigh
                              : AppColors.colorSecondaryMain,
                        )),
                    child: Center(
                        child: Text(
                      'Verify',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: isActive
                            ? AppColors.colorTextWhiteHigh
                            : AppColors.colorSecondaryMain,
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Did you don\'t code? ',
                      style: TextStyle(
                          color: Color(0xff303952),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _start = 60;
                          startTimer();
                        });
                      },
                      child: Text(
                        'Please resend ',
                        style: TextStyle(
                            color: Color(0xff2A9D8F),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return SizedBox(
      height: 58,
      width: 48,
      child: TextFormField(
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            setState(() {
              isActive = true;
            });
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0 && first == false) {
            setState(() {
              isActive = false;
            });
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: true,
        readOnly: false,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.colorTextBlackHigh),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: Offstage(),
          enabledBorder: OutlineInputBorder(
            // borderSide: BorderSide.
            // borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: AppColors.colorTextWhiteLow,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            // borderSide: BorderSide.none
            // borderRadius: BorderRadius.circular(8.r),
            borderSide:
                BorderSide(color: AppColors.colorTextWhiteLow, width: 1.5),
          ),
        ),
      ),
    );
  }
}
