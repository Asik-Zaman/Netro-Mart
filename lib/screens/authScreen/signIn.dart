import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/authScreen/forgot_password.dart';
import 'package:netro_mart_official/screens/authScreen/signup.dart';
import 'package:netro_mart_official/screens/home/home_screen.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final scaffoldColor = Color(0xffFFFFFF);

  final greyTextColor = Color(0xff6F6879);

  final emailTextColor = Color(0xff264653);

  final hintColor = Color(0xff6C6C6C);

  final buttonColor = Color(0xff2A9D8F);

  final dontAccountColor = Color(0xff303952);

  final boderColor = Color(0xffE9F1F4);

  final signColor = Color(0xffFF7A00);

  bool? valuefirst = false;
  var isObscured;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isObscured = true;
  }

  Widget getEmailField({required String hint}) {
    return TextField(
      obscureText: true,
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
              color: hintColor)),
    );
  }

  Widget getPasswordField({required String hint}) {
    return TextField(
      obscureText: isObscured,
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: isObscured
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                isObscured = !isObscured;
              });
            },
          ),
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
              color: hintColor)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 54.h,
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios,
                          size: 18.sp, color: AppColors.descColor)),
                  SizedBox(width: 16.22.w),
                  Text(
                    "Sign in your account",
                    style: TextStyle(
                        color: AppColors.descColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 41.5.h,
              ),
              SizedBox(
                height: 81.h,
                width: 80.w,
                child: SvgPicture.asset('assets/images/main.svg'),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "নেত্র মার্ট",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.themeColor,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: emailTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              getEmailField(hint: 'Enter email'),
              SizedBox(
                height: 8.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: emailTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              getPasswordField(hint: 'Enter password'),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: buttonColor,
                    value: valuefirst,
                    onChanged: (value) {
                      valuefirst = value;
                      setState(() {});
                    },
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: hintColor,
                        fontFamily: "Sora"),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: buttonColor,
                          fontFamily: "Sora"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          vertical: 16.h, horizontal: 24.w)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w600,
                      ))),
                  child: Text("Sign in"),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
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
                      color: dontAccountColor,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 24.h,
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
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: TextStyle(
                        color: Color(0xff303952),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      ' Signup',
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
        ),
      ),
    );
  }
}
