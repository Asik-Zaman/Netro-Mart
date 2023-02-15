import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/Review/final_Review.dart';

class SubmitReview extends StatefulWidget {
  const SubmitReview({super.key});

  @override
  State<SubmitReview> createState() => _SubmitReviewState();
}

class _SubmitReviewState extends State<SubmitReview> {
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
                height: 88.h,
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
                  height: 56.h,
                  width: 216.w,
                  margin:
                      EdgeInsets.symmetric(horizontal: 56.w, vertical: 16.h),
                  child: Column(children: [
                    Text(
                      'Your overall rating of this product',
                      style: TextStyle(
                          color: AppColors.colorTextBlackMid,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (int x = 1; x <= 5; x++) ...[
                          Icon(
                            Icons.star_border_outlined,
                          ),
                        ],
                      ],
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                height: 216.h,
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
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Share your feedback',
                        style: TextStyle(
                            color: AppColors.colorSecondaryMain,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        height: 80.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: AppColors.colorTextWhiteMid,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet consectetur. Egestas tortor sit suscipit aliquam suspendisse a pellentesque lectus. Nisi elit tellus cursus pulvinar. Vitae non at mauris lorem tortor tristique eu mi.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: AppColors.colorSecondaryMain,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          for (int x = 1; x <= 2; x++) ...[
                            Container(
                              margin: EdgeInsets.only(right: 8.w),
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
                                    child: Image.asset(
                                        'assets/images/new_shoes.png'),
                                  )),
                            )
                          ],
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 140.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FinalReview()));
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
                    'Submit',
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
