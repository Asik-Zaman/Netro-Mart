import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/models/on_boarding_models.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/screens/authScreen/multiple_login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView.builder(
          controller: _controller,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemCount: contents.length,
          itemBuilder: (_, i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: EdgeInsets.only(bottom: 56.h, left: 32.w, right: 32.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 140.h),
                    Container(
                        height: 245.h,
                        width: 256.w,
                        child: SvgPicture.asset(contents[i].image)),
                    SizedBox(height: 100.h),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        contents.length,
                        (index) => buildDot(index, context),
                      ),
                    )),
                    SizedBox(height: 24.h),
                    Text(
                      contents[i].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.2,
                          color: AppColors.titleColor,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      contents[i].discription,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.2,
                          color: AppColors.descColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 40.h),
                    Container(
                      height: 50.h,
                      width: 296.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColors.themeColor,
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          if (currentIndex == contents.length - 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => MultipleLoginScreen()));
                          }
                          _controller.nextPage(
                            duration: Duration(milliseconds: 100),
                            curve: Curves.bounceIn,
                          );
                        },
                        child: Center(
                          child: Text(
                            currentIndex == contents.length - 1
                                ? 'Get Started'
                                : "Next",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 12.h,
      margin: EdgeInsets.all(2),
      width: currentIndex == index ? 12.w : 12.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: currentIndex == index
              ? AppColors.themeColor
              : Color.fromARGB(255, 205, 205, 205)),
    );
  }
}
