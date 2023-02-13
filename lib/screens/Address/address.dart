import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/Address/delivery.dart';

import 'package:netro_mart_official/widgets/my_button.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool? valuefirst = false;
  final buttonColor = Color(0xff2A9D8F);

  final hintColor = Color(0xff6C6C6C);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 53.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.w),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,
                            size: 18.sp, color: AppColors.descColor)),
                    SizedBox(width: 13.w),
                    Text(
                      "Address",
                      style: TextStyle(
                          color: AppColors.descColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              //Stepper code
              Container(
                height: 45.h,
                width: 328.w,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 3.h,
                          width: 26.w,
                          color: Color(0xff2A9D8F),
                        ),
                        Container(
                          height: 16.h,
                          width: 16.h,
                          decoration: BoxDecoration(
                              color: Color(0xff2A9D8F),
                              borderRadius: BorderRadius.circular(60.r)),
                        ),
                        Container(
                          height: 3.h,
                          width: 70.w,
                          color: Color(0xff919191),
                        ),
                        Container(
                          height: 16.h,
                          width: 16.h,
                          decoration: BoxDecoration(
                              color: Color(0xff919191),
                              borderRadius: BorderRadius.circular(60.r)),
                        ),
                        Container(
                          height: 3.h,
                          width: 70.w,
                          color: Color(0xff919191),
                        ),
                        Container(
                          height: 16.h,
                          width: 16.h,
                          decoration: BoxDecoration(
                              color: Color(0xff919191),
                              borderRadius: BorderRadius.circular(60.r)),
                        ),
                        Container(
                          height: 3.h,
                          width: 70.w,
                          color: Color(0xff919191),
                        ),
                        Container(
                          height: 16.h,
                          width: 16.h,
                          decoration: BoxDecoration(
                              color: Color(0xff919191),
                              borderRadius: BorderRadius.circular(60.r)),
                        ),
                        Container(
                          height: 3.h,
                          width: 26.w,
                          color: Color(0xff919191),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Address'),
                        Text('Delivery'),
                        Text('Payment'),
                        Text('Confirm'),
                      ],
                    )
                  ],
                ),
              ),
             
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NewText('City'),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              height: 40.h,
                              width: 142.w,
                              child: TextField(
                                decoration: InputDecoration(
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
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 12.h),
                                    hintText: 'Enter city',
                                    hintStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Sora',
                                        color: Color(0xff6C6C6C))),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 22.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            NewText('Zip'),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              height: 40.h,
                              width: 142.w,
                              child: TextField(
                                decoration: InputDecoration(
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
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 12.h),
                                    hintText: 'Enter zip code',
                                    hintStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Sora',
                                        color: Color(0xff6C6C6C))),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    NewText('State'),
                    SizedBox(
                      height: 8.h,
                    ),
                    NewForm('Enter state'),
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
                          "Save this address for future",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: hintColor,
                              fontFamily: "Sora"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 102.h,
                    ),
                    MyButton(
                        textColor: AppColors.white,
                        color: AppColors.themeColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Delivery()));
                        },
                        text: "Continue"),
                  ],
                ),
              ),
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
