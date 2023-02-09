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
                      "Delivery",
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
                  Container(
                    height: 59.h,
                    width: 328.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xffFFFFFF),
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
                                    fontSize: 14.sp,
                                    color: Color(0xff264653),
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '5-10 Day Delivery',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Color(0xff919191),
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
                                  color: Color(0xff264653),
                                  fontWeight: FontWeight.w600),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 59.h,
                    width: 328.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xff2A9D8F),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 25,
                              offset: Offset(0, 5),
                              color: Color(0xff2A9D8F).withOpacity(.05))
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
                                'Standard Delivery',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '3-5 Day Delivery',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Color(0xffFFFFFF),
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
                              '\$4.99',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xff264653),
                                  fontWeight: FontWeight.w600),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 59.h,
                    width: 328.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xffFFFFFF),
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
                                'Express Delivery',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff264653),
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '1-2 Day Delivery',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Color(0xff919191),
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
                                  color: Color(0xff264653),
                                  fontWeight: FontWeight.w600),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 305.h,
                  ),
                  MyButton(
                      textColor: AppColors.white,
                      color: AppColors.themeColor,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Payment()));
                      },
                      text: "Continue"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
