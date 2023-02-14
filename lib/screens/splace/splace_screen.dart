import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/Boarding_Screen/on_borading.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: AppColors.themeColor,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 91.98.h,
                width: 90.w,
                child: Image(
                  image: AssetImage('assets/images/main_logo.png'),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 35.h,
                width: 105.w,
                child: Image(
                  image: AssetImage('assets/images/netro_text.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
