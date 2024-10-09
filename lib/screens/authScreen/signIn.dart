import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/Utils/custom_snackbar.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/models/user_login_model.dart';
import 'package:netro_mart_official/screens/authScreen/forgot_password.dart';
import 'package:netro_mart_official/screens/authScreen/signup.dart';
import 'package:netro_mart_official/screens/home/home_screen.dart';
import 'package:netro_mart_official/widgets/bottom.dart';
import 'package:provider/provider.dart';

import '../../Provider/auth_provider.dart';

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
    super.initState();
    isObscured = true;
  }

  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState>? _formKeyLogin;
  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  _postUserData() async {
    log('User Login');
    UserLoginModel userLoginModel = UserLoginModel();
    String phone = _phoneController.text.trim();
    String password = _passwordController.text.trim();
    if (phone.isEmpty) {
      showCustomSnackBar('Enter phone', context);
    } else if (password.length < 6) {
      showCustomSnackBar('Password should be greater than 6', context);
    } else {
      userLoginModel.phoneNumber = phone;
      userLoginModel.password = password;

      await Provider.of<AuthProvider>(context, listen: false)
          .userLogin(context, userLoginModel)
          .then((status) async {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CustomBottomNav()));
      });
    }
  }

  Widget getEmailField(
      {required String hint, required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
      obscureText: false,
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

  Widget getPasswordField(
      {required String hint, required TextEditingController controller}) {
    return TextFormField(
      controller: controller,
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
              "Create an account",
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
            margin: EdgeInsets.only(left: 32.w, right: 32.w, bottom: 63.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
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
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Phone',
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
                    getEmailField(
                        hint: 'Enter phone number',
                        controller: _phoneController),
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
                    getPasswordField(
                        hint: 'Enter password',
                        controller: _passwordController),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                color: valuefirst! ? buttonColor : hintColor,
                              ),
                            ),
                          ],
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
                            ),
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
                          _postUserData();
                        },
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12))),
                            backgroundColor:
                                MaterialStateProperty.all(buttonColor),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    vertical: 16.h, horizontal: 24.w)),
                            textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600,
                            ))),
                        child: Consumer<AuthProvider>(
                            builder: (context, value, child) {
                          return Text(
                              value.isLoading ? "Loading..." : "Sign in");
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 1,
                          color: AppColors.colorTextWhiteLow,
                        )),
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
                        Expanded(
                            child: Divider(
                          thickness: 1,
                          color: AppColors.colorTextWhiteLow,
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 76.w),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage())),
                                child: Container(
                                    child: SvgPicture.asset(
                                        'assets/images/Google.svg'))),
                            SizedBox(width: 12.h),
                            GestureDetector(
                                onTap: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage())),
                                child: Container(
                                    child: SvgPicture.asset(
                                        'assets/images/Facebook.svg'))),
                            SizedBox(width: 12.h),
                            GestureDetector(
                                onTap: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage())),
                                child: Container(
                                    child: SvgPicture.asset(
                                        'assets/images/Apple.svg'))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 64.h,
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
      ),
    );
  }
}
