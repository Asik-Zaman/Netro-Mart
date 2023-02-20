import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  List questionAnswer = [
    {
      "question":
          "I’d like to return a gift that was sent to me. How to I do that?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur. Potenti vitae mauris feugiat faucibus viverra aliquet enim. Risus eget velit pretium vitae id viverra libero."
    },
    {
      "question": "I want to return my purchases! What do I do?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur. Potenti vitae mauris feugiat faucibus viverra aliquet enim. Risus eget velit pretium vitae id viverra libero."
    },
    {
      "question": "Do you have a catalogue?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur. Potenti vitae mauris feugiat faucibus viverra aliquet enim. Risus eget velit pretium vitae id viverra libero."
    },
    {
      "question": "Can I exchange my order instead of returning it?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur. Potenti vitae mauris feugiat faucibus viverra aliquet enim. Risus eget velit pretium vitae id viverra libero."
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
                    "FAQ",
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
                  itemCount: questionAnswer.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 25,
                                offset: Offset(0, 5),
                                color: Color(0xff000000).withOpacity(.05))
                          ]),
                      margin:
                          EdgeInsets.only(left: 16.w, right: 16.w, bottom: 8.h),
                      child: Column(
                        children: [
                          Theme(
                            data: ThemeData()
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Text(
                                questionAnswer[index]['question'],
                                style: TextStyle(
                                    color: AppColors.colorSecondaryMain,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.w, right: 16.w, bottom: 16.h),
                                  child: Text(
                                    questionAnswer[index]['answer'],
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: AppColors.colorTextBlackMid,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
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
