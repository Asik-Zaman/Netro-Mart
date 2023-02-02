import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/authScreen/signup.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class MultipleLoginScreen extends StatelessWidget {
  const MultipleLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 122.91.h,
                    width: 122.w,
                    child: SvgPicture.asset('assets/images/main.svg')),
                SizedBox(height: 18.09.h),
                Text(
                  "নেত্র মার্ট",
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.themeColor,
                  ),
                ),
                SizedBox(height: 80.h),
                Text(
                  "Welcome to Netro Mart",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.2,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.titleColor,
                  ),
                ),
                SizedBox(height: 24.h),
                Text(
                  "Continue with",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.descColor,
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/Google.svg'),
                      SizedBox(width: 12.h),
                      SvgPicture.asset('assets/images/Facebook.svg'),
                      SizedBox(width: 12.h),
                      SvgPicture.asset('assets/images/Apple.svg')
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Divider()),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleColor,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 40.h),
                MyButton(
                    textColor: AppColors.white,
                    color: AppColors.themeColor,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    text: "Create an account"),
                SizedBox(height: 12.h),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50.h,
                    width: 296.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          color: AppColors.titleColor,
                        )),
                    child: Center(
                        child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor,
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
