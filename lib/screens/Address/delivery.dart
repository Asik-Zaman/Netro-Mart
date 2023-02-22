import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/Address/payment.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  int selectedCategoryIndex = 0;
  bool? valuefirst = false;
  final buttonColor = Color(0xff2A9D8F);

  final hintColor = Color(0xff6C6C6C);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Delivery",
              style: TextStyle(
                  color: AppColors.descColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffFFFFFF),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 56.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                //Stepper code
                Container(
                  height: 45.h,
                  width: double.infinity,
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
                  height: 40.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int x = 1; x <= 3; x++) ...[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCategoryIndex = x;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8.h),
                          height: 59.h,
                          width: 328.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: selectedCategoryIndex == x
                                  ? AppColors.colorPrimaryMain
                                  : AppColors.colorTextWhiteHigh,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 25,
                                    offset: Offset(0, 5),
                                    color: Color(0xff000000).withOpacity(.05))
                              ]),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Free Delivery',
                                      style: TextStyle(
                                          color: selectedCategoryIndex == x
                                              ? AppColors.colorTextWhiteHigh
                                              : AppColors.colorSecondaryMain,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '5-10 Day Delivery',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          color: selectedCategoryIndex == x
                                              ? AppColors.colorTextWhiteHigh
                                              : AppColors.colorTextLow,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 26.h,
                                  width: 69.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF7F7F7),
                                      borderRadius: BorderRadius.circular(8.r)),
                                  child: Center(
                                      child: Text(
                                    '\$0.00',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: selectedCategoryIndex == x
                                            ? AppColors.colorPrimaryMain
                                            : AppColors.colorSecondaryMain,
                                        fontWeight: FontWeight.w600),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                    SizedBox(
                      height: 305.h,
                    ),
                    MyButton(
                        textColor: AppColors.white,
                        color: AppColors.themeColor,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment()));
                        },
                        text: "Continue"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
