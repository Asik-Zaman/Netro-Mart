import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:netro_mart_official/Provider/auth_provider.dart';
import 'package:netro_mart_official/Utils/custom_snackbar.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/models/user_registration_post_model.dart';
import 'package:netro_mart_official/screens/authScreen/signIn.dart';
import 'package:netro_mart_official/screens/home/home_screen.dart';
import 'package:netro_mart_official/widgets/my_button.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confPasswordController = TextEditingController();
  GlobalKey<FormState>? _formKeyLogin;
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confPasswordController.dispose();
    super.dispose();
  }

  _postUserData() async {
    log('User Registration');
    UserRegistrationModel userRegistrationModel = UserRegistrationModel();
    String name = _nameController.text.trim();
    String email = _emailController.text.trim();
    String phone = _phoneController.text.trim();
    String password = _passwordController.text.trim();
    String confPassword = _passwordController.text.trim();
    if (name.isEmpty) {
      showCustomSnackBar('Enter name', context);
    } else if (email.isEmpty) {
      showCustomSnackBar('Enter email', context);
    } else if (phone.isEmpty) {
      showCustomSnackBar('Enter phone', context);
    } else if (password.length < 6) {
      showCustomSnackBar('Password should be greater than 6', context);
    } else if (confPassword.length < 6) {
      showCustomSnackBar('Confirm password should be greater than 6', context);
    } else {
      userRegistrationModel.name = name;
      userRegistrationModel.email = email;
      userRegistrationModel.phoneNumber = phone;
      userRegistrationModel.password = password;
      userRegistrationModel.confPassword = confPassword;

      await Provider.of<AuthProvider>(context, listen: false)
          .userRegistration(context, userRegistrationModel)
          .then((status) async {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => SignIn()));
      });
    }
  }

  bool isEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
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
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 32.w, right: 32.w, bottom: 68.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                NewText('Full Name'),
                SizedBox(
                  height: 8.h,
                ),
                NewForm('Full Name', false, _nameController),
                SizedBox(
                  height: 12.h,
                ),
                NewText('Email'),
                SizedBox(
                  height: 8.h,
                ),
                NewForm('Enter email', false, _emailController),
                SizedBox(
                  height: 12.h,
                ),
                NewText('Phone'),
                SizedBox(
                  height: 8.h,
                ),
                NewForm('Enter phone', false, _phoneController),
                SizedBox(
                  height: 12.h,
                ),
                NewText('Password'),
                SizedBox(
                  height: 8.h,
                ),
                NewForm('Enter password', true, _passwordController),
                SizedBox(
                  height: 12.h,
                ),
                NewText('Confirm password'),
                SizedBox(
                  height: 8.h,
                ),
                NewForm('Confirm password', true, _confPasswordController),
                SizedBox(
                  height: 24.h,
                ),
                Consumer<AuthProvider>(builder: (context, value, child) {
                  return MyButton(
                      textColor: AppColors.white,
                      color: AppColors.themeColor,
                      onPressed: () async {
                        _postUserData();
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      text: value.isLoading ? "Loading..." : "Sign up");
                }),
                SizedBox(
                  height: 40.h,
                ),
                Center(
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
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1.5,
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
                        color: AppColors.titleColor,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Expanded(
                        child: Divider(
                            thickness: 1.5,
                            color: AppColors.colorTextWhiteLow)),
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
                              child:
                                  SvgPicture.asset('assets/images/Apple.svg'))),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
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
          ),
        ),
      ),
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

  Widget NewForm(String hint, bool obs, TextEditingController? controller) {
    return TextFormField(
      controller: controller,
      obscureText: obs,
      decoration: InputDecoration(
          // filled: true,
          // fillColor: isEnable
          //     ? AppColors.colorPrimaryLightest
          //     : AppColors.colorTextWhiteHigh,
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
