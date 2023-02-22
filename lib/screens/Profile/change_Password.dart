import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final buttonColor = Color(0xff2A9D8F);

  bool? valuefirst = false;
  var isObscured;

  @override
  void initState() {
    super.initState();
    isObscured = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.colorTextWhiteHigh,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios,
                      size: 16.sp, color: AppColors.descColor)),
              SizedBox(width: 13.w),
              Text(
                "Change Password",
                style: TextStyle(
                    color: AppColors.descColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 32.w, right: 32.w, bottom: 54.h),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: SvgPicture.asset(
                    'assets/images/change_pass.svg',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NewText('Old Password'),
                    SizedBox(
                      height: 8.h,
                    ),
                    NewForm('Enter new password'),
                    SizedBox(
                      height: 12.h,
                    ),
                    NewText('New Password'),
                    SizedBox(
                      height: 8.h,
                    ),
                    NewForm('New Password'),
                    SizedBox(
                      height: 12.h,
                    ),
                    NewText('Confirm new password'),
                    SizedBox(
                      height: 8.h,
                    ),
                    NewForm('Confirm new password'),
                    SizedBox(
                      height: 8.h,
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
                            color: buttonColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 190.h,
                    ),
                    MyButton(
                        textColor: AppColors.white,
                        color: AppColors.themeColor,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        text: "Update password"),
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

  Widget NewForm(String hint) {
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
              color: Color(0xff6C6C6C))),
    );
  }
}
