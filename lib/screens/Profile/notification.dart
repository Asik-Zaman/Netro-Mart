import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';

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
          'title': 'Nike Shoes Air Max',
          'status': 'Delivered',
          'timeStamp': '30 Dec 22'
        },
        {
          'image': 'assets/images/black_watch.png',
          'title': 'Nike Shoes Air Max',
          'status': 'Delivered',
          'timeStamp': '30 Dec 22'
        },
      ]
    },
    {
      'date': '2 Days Ago',
      'content': [
        {
          'image': 'assets/images/black_watch.png',
          'title': 'Nike Shoes Air Max',
          'discount': '30% OFF',
          'timeStamp': '30 Dec 22'
        },
        {
          'image': 'assets/images/black_watch.png',
          'title': 'Nike Shoes Air Max',
          'status': 'Delivered',
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
             /*  Container(
                height: 650.h,
                width: double.infinity,
                child: Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 16.h),
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: wishItems.length,
                      itemBuilder: ((context, index) {
                        return ListView.builder(
                            itemCount:
                                wishItems[index]['content'].length,
                            itemBuilder: ((context, i) {
                              return Container(
                                margin: EdgeInsets.only(
                                    bottom: 8.h, left: 16.w, right: 16.w),
                                height: 78.h,
                                width: 304.w,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(8.r),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 25,
                                          offset: Offset(0, 5),
                                          color: Color(0xff000000)
                                              .withOpacity(.05))
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
                                                image: AssetImage(
                                                    wishItems[index]
                                                            ['content'][i]
                                                        ['image']),
                                                fit: BoxFit.contain)),
                                      ),
                                      SizedBox(
                                        width: 24.w,
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              wishItems[index]['content'][i]
                                                      ['title']
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Color(0xff303952),
                                                  fontWeight:
                                                      FontWeight.w600,
                                                  fontSize: 10.sp),
                                            ),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }));
                      })),
                ),
              ), */
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
