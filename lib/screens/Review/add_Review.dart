import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/Review/submit_Review.dart';

class AddReview extends StatefulWidget {
  const AddReview({super.key});

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
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

  bool color = false;
  int _counter = 0;
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
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
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
                    width: 250.w,
                    margin:
                        EdgeInsets.symmetric(horizontal: 56.w, vertical: 8.h),
                    child: Column(children: [
                      Text(
                        'Your overall rating of this product',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.colorTextBlackMid,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      FittedBox(
                        child: Container(
                          height: 24.h,
                          width: 216.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              for (int x = 1; x <= 5; x++) ...[
                                GestureDetector(
                                  onTap: () => setState(() {
                                    _updateRating(x);
                                  }),
                                  child: Icon(
                                    Icons.star,
                                    color: _starColors[x - 1],
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  height: 136.h,
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
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
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
                            child: TextFormField(
                              maxLines: 3,
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                    borderSide: BorderSide(
                                      color: Color(0xffE9F1F4),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                    borderSide: BorderSide(
                                      color: Color(0xffE9F1F4),
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 10.h),
                                  hintText: 'Tell us what you like....',
                                  hintStyle: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.colorTextBlackMid)),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  height: 154.h,
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
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upload & Attach photos',
                          style: TextStyle(
                              color: AppColors.colorSecondaryMain,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            color = true;
                            _counter++;
                            setState(() {});
                          },
                          child: Container(
                            height: 98.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColors.colorTextWhiteMid,
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 16.h),
                                SvgPicture.asset(
                                    'assets/images/upload_img.svg'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Click to upload ',
                                      style: TextStyle(
                                          color: AppColors.colorPrimaryMain,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 40.h,
                                    ),
                                    Text(
                                      'SVG, JPG, PNG, ETC',
                                      style: TextStyle(
                                          color: AppColors.colorTextBlackMid,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                _counter == 0
                    ? Container()
                    : Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 8.h),
                        width: double.infinity,
                        height: 65.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.white,
                            border:
                                Border.all(color: AppColors.colorTextDisable)),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 12.h),
                          child: Row(children: [
                            SvgPicture.asset('assets/images/add_image.svg'),
                            SizedBox(
                              width: 8.w,
                            ),
                            Container(
                              width: 260.w,
                              height: 60.h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Images name.jpg',
                                        style: TextStyle(
                                            color: AppColors.colorTextPureBlack,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SvgPicture.asset(
                                          'assets/images/right.svg'),
                                    ],
                                  ),
                                  Text(
                                    '1.2mb',
                                    style: TextStyle(
                                        color: AppColors.colorTextLow,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Divider(
                                    color: AppColors.colorTextDisable,
                                    height: 2,
                                    thickness: 2,
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SubmitReview()));
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
      ),
    );
  }
}
