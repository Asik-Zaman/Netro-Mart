import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/authScreen/signIn.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 0.0.h),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,
                            size: 18.sp, color: AppColors.descColor)),
                    SizedBox(width: 13.w),
                    Text(
                      "Create an account",
                      style: TextStyle(
                          color: AppColors.descColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NewText('Full Name'),
                      SizedBox(
                        height: 8.h,
                      ),
                      NewForm('Full Name'),
                      SizedBox(
                        height: 12.h,
                      ),
                      NewText('Email'),
                      SizedBox(
                        height: 8.h,
                      ),
                      NewForm('Enter email'),
                      SizedBox(
                        height: 12.h,
                      ),
                      NewText('Phone'),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        height: 45.h,
                        width: double.infinity,
                        child: IntlPhoneField(
                          disableLengthCheck: true,
                          flagsButtonPadding: EdgeInsets.only(left: 10),
                          dropdownIconPosition: IconPosition.trailing,
                          decoration: InputDecoration(
                            hintText: 'Enter phone number',
                            hintStyle: TextStyle(
                                fontSize: 12.sp, color: Color(0xff6C6C6C)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(
                                  color: Color(0xff2A9D8F), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.r),
                              borderSide: BorderSide(
                                  color: Color(0xffE9F1F4), width: 1),
                            ),
                          ),
                          initialCountryCode: 'US',
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      NewText('Password'),
                      SizedBox(
                        height: 8.h,
                      ),
                      NewForm('Enter password'),
                      SizedBox(
                        height: 12.h,
                      ),
                      NewText('Confirm password'),
                      SizedBox(
                        height: 8.h,
                      ),
                      NewForm('Confirm password'),
                      SizedBox(
                        height: 24.h,
                      ),
                      MyButton(
                          textColor: AppColors.white,
                          color: AppColors.themeColor,
                          onPressed: () {
                            /*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp())); */
                          },
                          text: "Sign up"),
                      SizedBox(
                        height: 40.h,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'By signing up you agree to our',
                                style: TextStyle(
                                    color: Color(0xff303952),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Privacy Policy and Terms',
                                    style: TextStyle(
                                        color: Color(0xffFF7A00),
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
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
                      SizedBox(
                        height: 16.h,
                      ),
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
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            style: TextStyle(
                                color: Color(0xff303952),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignIn()));
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Color(0xffFF7A00),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget NewText(String title) {
    return Container(
      child: Text(title,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff264653),
          )),
    );
  }

  Widget NewForm(String hint) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Color(0xff2A9D8F), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Color(0xffE9F1F4), width: 1),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Sora',
              color: Color(0xff6C6C6C))),
    );
  }
}
