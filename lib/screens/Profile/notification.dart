import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/models/on_boarding_models.dart';
import 'package:netro_mart_official/screens/Review/review_Dialog.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<Map<dynamic, dynamic>> wishItems = [
    {
      'date': 'Today',
      'content': [
        {
          'image': 'assets/images/black_watch.png',
          'title': 'Casual Watcher proof Watch',
          'discount': '30% OFF',
          'timeStamp': '30 Dec 22'
        },
        {
          'image': 'assets/images/grid_white.png',
          'title': 'T-Shirt for men',
          'discount': '15% OFF',
          'timeStamp': '30 Dec 22'
        },
      ]
    },
    {
      'date': '2 Days Ago',
      'content': [
        {
          'image': 'assets/images/black_jacket1.png',
          'title': 'Casual Redwolf Jacket',
          'discount': '30% OFF',
          'timeStamp': '30 Dec 22'
        },
        {
          'image': 'assets/images/grid_polo.png',
          'title': 'T-Shirt for men',
          'discount': '40% OFF',
          'timeStamp': '30 Dec 22'
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
      body: Container(
        height: MediaQuery.of(context).size.height,
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
                    "Notifications",
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
            Container(
              height: 635.h,
              width: double.infinity,
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 16.h),
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: wishItems.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 16.h, left: 16.w, right: 16.w),
                          child: Text(
                            wishItems[index]['date'],
                            style: TextStyle(
                                color: AppColors.colorTextBlackMid,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  backgroundColor:
                                      AppColors.colorPrimaryLightest,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(24.r)),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.w, right: 24.w, top: 40.h),
                                    child: Container(
                                      height: 318,
                                      width: 296,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 73,
                                            child: Image.asset(
                                              'assets/images/success.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 32.h,
                                          ),
                                          Container(
                                            height: 80.h,
                                            width: 248.w,
                                            child: Text(
                                              'Your product is successfully delivered just as you wished. Please give us your feedback.',
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.colorTextLow,
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 32.h,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 14.w),
                                            child: MyButton(
                                                textColor: AppColors.white,
                                                color: AppColors.themeColor,
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                text: "Give your feedback"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                          child: Container(
                            margin: EdgeInsets.only(
                                bottom: 8.h, left: 16.w, right: 16.w),
                            height: 78.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 25,
                                      offset: Offset(0, 5),
                                      color: Color(0xff000000).withOpacity(.05))
                                ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 8.h),
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Container(
                                      height: 52.6.h,
                                      width: 60.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(wishItems[index]
                                                  ['content'][0]['image']),
                                              fit: BoxFit.contain)),
                                    ),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    Container(
                                      width: 208.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            wishItems[index]['content'][0]
                                                    ['title']
                                                .toString(),
                                            style: TextStyle(
                                                color: AppColors
                                                    .colorTextBlackHigh,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12.sp),
                                          ),
                                          SizedBox(
                                            height: 4.h,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                wishItems[index]['content'][0]
                                                        ['discount']
                                                    .toString(),
                                                style: TextStyle(
                                                    color: AppColors
                                                        .colorTextBlackHigh,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10.sp),
                                              ),
                                              SizedBox(
                                                width: 40.w,
                                              ),
                                              Text(
                                                wishItems[index]['content'][0]
                                                        ['timeStamp']
                                                    .toString(),
                                                style: TextStyle(
                                                    color:
                                                        AppColors.colorTextLow,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10.sp),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.close,
                                      color: AppColors.colorTextGreyPurpleLow,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              bottom: 8.h, left: 16.w, right: 16.w),
                          height: 78.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 25,
                                    offset: Offset(0, 5),
                                    color: Color(0xff000000).withOpacity(.05))
                              ]),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Row(
                              children: [
                                Container(
                                  height: 52.6.h,
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(wishItems[index]
                                              ['content'][1]['image']),
                                          fit: BoxFit.contain)),
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                                Container(
                                  width: 208.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        wishItems[index]['content'][1]['title']
                                            .toString(),
                                        style: TextStyle(
                                            color: AppColors.colorTextBlackHigh,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.sp),
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            wishItems[index]['content'][1]
                                                    ['discount']
                                                .toString(),
                                            style: TextStyle(
                                                color: AppColors
                                                    .colorTextBlackHigh,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10.sp),
                                          ),
                                          SizedBox(
                                            width: 40.w,
                                          ),
                                          Text(
                                            wishItems[index]['content'][1]
                                                    ['timeStamp']
                                                .toString(),
                                            style: TextStyle(
                                                color: AppColors.colorTextLow,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10.sp),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.close,
                                  color: AppColors.colorTextGreyPurpleLow,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
