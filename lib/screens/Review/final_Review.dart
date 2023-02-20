import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/home/home_screen.dart';
import 'package:netro_mart_official/widgets/bottom.dart';

class FinalReview extends StatefulWidget {
  const FinalReview({super.key});

  @override
  State<FinalReview> createState() => _FinalReviewState();
}

class _FinalReviewState extends State<FinalReview> {
  int _selectedRating = 0;
  List<Color> _starColors = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];

  void _updateRating(int rating) {
    setState(() {
      // toggle the color of the selected star
      if (_selectedRating == rating) {
        _selectedRating = 0;
        _starColors = List.filled(5, Colors.grey);
      } else {
        _selectedRating = rating;
        _starColors = List.generate(
            5,
            (index) =>
                index < rating ? AppColors.colorStatusAlert : Colors.grey);
      }
    });
  }

  bool color = true;
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
      backgroundColor: AppColors.colorTextWhiteHigh,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(bottom: 47.h),
            child: Column(
              children: [
                SizedBox(
                  height: 24.h,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 18.h,
                                            width: 142.w,
                                            child: Text(
                                              'Tanjima Tazreen',
                                              style: TextStyle(
                                                  color: Color(0xff264653),
                                                  fontSize: 14.sp,
                                                  fontFamily: 'Sora',
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16.w,
                                          ),
                                          Container(
                                              height: 16.h,
                                              width: 70.w,
                                              child: Row(
                                                children: [
                                                  for (int x = 1;
                                                      x <= 5;
                                                      x++) ...[
                                                    GestureDetector(
                                                      onTap: () => setState(() {
                                                        _updateRating(x);
                                                      }),
                                                      child: Icon(
                                                        Icons.star,
                                                        size: 14.sp,
                                                        color:
                                                            _starColors[x - 1],
                                                      ),
                                                    ),

                                                    // you can add widget here as well
                                                  ],
                                                ],
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
                            SizedBox(
                              height: 12.h,
                            ),
                            SizedBox(
                              height: 56.h,
                              width: 280.w,
                              child: Text(
                                'Quality Product with Reasonable Price. Same Price e Market Available Product theke Onk valo. Super Fast Delivery,Thanks Seller😍',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.colorTextBlackMid,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 60,
                              width: 280,
                              child: Row(
                                children: [
                                  for (int x = 1; x <= 2; x++) ...[
                                    Container(
                                      height: 60,
                                      width: 62,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: AppColors.colorSecondaryLightest,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12, vertical: 12),
                                        child: Image.asset(
                                            'assets/images/new_shoes.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    )
                                  ],
                                ],
                              ),
                            ),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomBottomNav()));
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
      ),
    );
  }
}
