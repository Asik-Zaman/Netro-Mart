import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/models/on_boarding_models.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  List<Map<dynamic, dynamic>> wishItems = [
    {
      'title': '1. Privacy Policy',
      'desc':
          'Lorem ipsum dolor sit amet consectetur. Egestas tortor sit suscipit aliquam suspendisse a pellentesque lectus. Nisi elit tellus cursus pulvinar. Vitae non at mauris lorem tortor tristique eu mi. Cursus ante arcu dui montes commodo. Erat erat.',
    },
    {
      'title': '2. Data that we collect',
      'desc':
          'Lorem ipsum dolor sit amet consectetur. Egestas tortor sit suscipit aliquam suspendisse a pellentesque lectus. Nisi elit tellus cursus pulvinar. Vitae non at mauris lorem tortor tristique eu mi. Cursus ante arcu dui montes commodo. Erat erat.',
    },
    {
      'title': '3. Competitions',
      'desc':
          'Lorem ipsum dolor sit amet consectetur. Egestas tortor sit suscipit aliquam suspendisse a pellentesque lectus. Nisi elit tellus cursus pulvinar. Vitae non at mauris lorem tortor tristique eu mi. Cursus ante arcu dui montes commodo. Erat erat.',
    },
    {
      'title': '4. Cookies',
      'desc':
          'Lorem ipsum dolor sit amet consectetur. Egestas tortor sit suscipit aliquam suspendisse a pellentesque lectus. Nisi elit tellus cursus pulvinar. Vitae non at mauris lorem tortor tristique eu mi. Cursus ante arcu dui montes commodo. Erat erat.',
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
                    "Privacy Policy",
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
              height: 635.h,
              width: double.infinity,
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 16.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: wishItems.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            wishItems[index]['title'],
                            style: TextStyle(
                                color: AppColors.colorSecondaryMain,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            wishItems[index]['desc'],
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: AppColors.colorTextBlackMid,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                        ],
                      ),
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
