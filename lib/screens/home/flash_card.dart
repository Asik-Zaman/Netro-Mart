import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlashCard extends StatelessWidget {
  final String title;
  final String image;
  final String discountPercentage;
  const FlashCard(
      {super.key,
      required this.title,
      required this.image,
      this.discountPercentage = 'jj'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.h,
      width: 101.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 3.0,
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 116, 135, 141),
              Color.fromARGB(255, 241, 244, 245),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.0, 5.0],
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 12.33.h,
              width: 35.w,
              decoration: BoxDecoration(
                  color: Color(0xff2A9D8F),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(4.r),
                      topRight: Radius.circular(4.r))),
              child: Center(
                child: Text(
                  '20% OFF',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: 'Sora',
                      fontSize: 6.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          SizedBox(height: 9.4.h),
          Center(
            child: Container(
              height: 60.h,
              width: 60.h,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w, bottom: 7.h),
            child: Container(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 8.sp,
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
