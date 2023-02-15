import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/home/home_screen.dart';

class FinalReview extends StatefulWidget {
  const FinalReview({super.key});

  @override
  State<FinalReview> createState() => _FinalReviewState();
}

class _FinalReviewState extends State<FinalReview> {
  bool color = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 30.h),
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
                      "Add review",
                      style: TextStyle(
                          color: AppColors.descColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                height: 86.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 25,
                          offset: Offset(0, 5),
                          color: Color(0xff000000).withOpacity(.05))
                    ]),
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(left: 16.w, top: 8.h, bottom: 8.h),
                      height: 70,
                      width: 76,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.colorSecondaryLightest,
                      ),
                      child: Container(
                          height: 46,
                          width: 52,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            child: Image.asset('assets/images/new_shoes.png'),
                          )),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Running shoe',
                            style: TextStyle(
                                color: AppColors.colorTextBlackHigh,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            'Nike Shoes Air Max',
                            style: TextStyle(
                                color: AppColors.colorTextBlackHigh,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                height: 206.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 25,
                          offset: Offset(0, 5),
                          color: Color(0xff000000).withOpacity(.05))
                    ]),
                child: Container(
                  margin: EdgeInsets.all(12),
                  height: 182.h,
                  width: 296.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 25,
                            offset: Offset(0, 5),
                            color: Color(0xff000000).withOpacity(.05))
                      ]),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 28.h,
                            width: 272.w,
                            child: Row(
                              children: [
                                Container(
                                  height: 24.h,
                                  width: 24.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.r),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/avatar.png'),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Container(
                                  height: 28.h,
                                  width: 233.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 18.h,
                                            width: 144.w,
                                            child: Text(
                                              'Tanjima Tazreen',
                                              style: TextStyle(
                                                  color: Color(0xff264653),
                                                  fontSize: 14.sp,
                                                  fontFamily: 'Sora',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Container(
                                              height: 16.h,
                                              width: 80.w,
                                              child: FittedBox(
                                                child: Row(
                                                  children: [
                                                    for (int x = 1;
                                                        x <= 5;
                                                        x++) ...[
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Color(0xffF4A100),
                                                        size: 18.sp,
                                                      ),

                                                      // you can add widget here as well
                                                    ],
                                                  ],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Container(
                                          height: 10.h,
                                          width: 240.w,
                                          child: Text(
                                            '26 Nov 2022',
                                            style: TextStyle(
                                                color: Color(0xff6F6879),
                                                fontSize: 8.sp,
                                                fontFamily: 'Sora',
                                                fontWeight: FontWeight.w400),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Quality Product with Reasonable Price. Same Price e Market Available Product theke Onk valo. Super Fast Delivery,Thanks Seller😍',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              height: 60.h,
                              width: 272.w,
                              child: Row(
                                children: [
                                  for (int x = 1; x <= 2; x++) ...[
                                    Container(
                                      margin: EdgeInsets.only(right: 8.w),
                                      height: 70,
                                      width: 76,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: AppColors.colorSecondaryLightest,
                                      ),
                                      child: Container(
                                          height: 46,
                                          width: 52,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 12),
                                            child: Image.asset(
                                                'assets/images/new_shoes.png'),
                                          )),
                                    )
                                  ],
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 260.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  height: 50.h,
                  width: 296.w,
                  decoration: BoxDecoration(
                      color: color == true
                          ? AppColors.colorPrimaryMain
                          : AppColors.colorTextWhiteHigh,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: color == true
                            ? AppColors.colorPrimaryMain
                            : AppColors.titleColor,
                      )),
                  child: Center(
                      child: Text(
                    'Back to home',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: color == true
                          ? AppColors.white
                          : AppColors.titleColor,
                      // color: AppColors.titleColor,
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
