import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var _currentSelectedValue;
  List gender = [
    'Male',
    'Female',
  ];
  @override
  void initState() {
    _currentSelectedValue = gender[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 16.w),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 53.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
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
                      "Edit Profile",
                      style: TextStyle(
                          color: AppColors.descColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Stack(clipBehavior: Clip.none, children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'assets/images/profile_pic.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                    top: 88,
                    left: 40,
                    child: SvgPicture.asset('assets/images/edit.svg'))
              ]),
              SizedBox(
                height: 16,
              ),
              Text(
                'John Smith',
                style: TextStyle(
                    color: AppColors.colorPrimaryMain,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'user@website.com',
                style: TextStyle(
                    color: AppColors.colorTextLow,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NewText('Full Name'),
                    SizedBox(
                      height: 8.h,
                    ),
                    NewForm('John Smith'),
                    SizedBox(
                      height: 12.h,
                    ),
                    NewText('Email'),
                    SizedBox(
                      height: 8.h,
                    ),
                    NewForm('user@website.com'),
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
                          hintText: '+1 0123 456 789',
                          hintStyle: TextStyle(
                              fontSize: 12.sp, color: Color(0xff6C6C6C)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide:
                                BorderSide(color: Color(0xff2A9D8F), width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide:
                                BorderSide(color: Color(0xffE9F1F4), width: 1),
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
                    NewText('Gender'),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      height: 48,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border:
                              Border.all(width: 1, color: Color(0xffE9F1F4))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Stack(children: [
                          DropdownButton(
                            icon: Icon(Icons.expand_more),
                            underline: SizedBox(),
                            hint: Text(
                              gender[0],
                              style: TextStyle(
                                  color: AppColors.colorTextBlackMid,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            value: _currentSelectedValue,
                            onChanged: ((newValue) {
                              setState(() {
                                _currentSelectedValue = newValue;
                              });
                            }),
                            items: gender.map((val) {
                              return DropdownMenuItem(
                                value: val,
                                child: Text(val),
                              );
                            }).toList(),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    NewText('Country'),
                    SizedBox(
                      height: 8.h,
                    ),
                    NewForm('United States'),
                    SizedBox(
                      height: 24.h,
                    ),
                    MyButton(
                        textColor: AppColors.white,
                        color: AppColors.themeColor,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        text: "Update"),
                  ],
                ),
              )
          
            ],
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
