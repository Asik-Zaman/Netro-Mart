import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/Support/chat_Page.dart';
import 'package:netro_mart_official/screens/home/home_screen.dart';
import 'package:netro_mart_official/screens/Profile/profile.dart';
import '../screens/Profile/notification.dart';
import '../screens/shoping cart/shoping_cart.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int pageIndex = 0;

  final pages = [
    HomePage(),
    NotificationPage(),
    ShopingCart(),
    ChatPage(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 72,
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r)),
            color: Color(0xffFFFFFF),
            boxShadow: [
              BoxShadow(
                  blurRadius: 30,
                  offset: Offset(5, 0),
                  color: Color(0xff000000).withOpacity(.09))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              enableFeedback: false,
              onTap: () => setState(() {
                pageIndex = 0;
              }),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: pageIndex == 0
                        ? AppColors.colorPrimaryMain
                        : AppColors.colorTextWhiteHigh),
                child: Container(
                  height: 24,
                  width: 24,
                  child: Center(
                      child: pageIndex == 0
                          ? Image.asset(
                              'assets/images/nav_home.png',
                              fit: BoxFit.contain,
                            )
                          : Image.asset(
                              'assets/images/home_grey.png',
                              fit: BoxFit.contain,
                            )),
                ),
              ),
            ),
            InkWell(
              enableFeedback: false,
              onTap: () => setState(() {
                pageIndex = 1;
              }),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: pageIndex == 1
                        ? AppColors.colorPrimaryMain
                        : AppColors.colorTextWhiteHigh),
                child: Container(
                  height: 24,
                  width: 24,
                  child: Center(
                      child: pageIndex == 1
                          ? Image.asset(
                              'assets/images/bell_white.png',
                              fit: BoxFit.contain,
                            )
                          : Image.asset(
                              'assets/images/nav_bell.png',
                              fit: BoxFit.contain,
                            )),
                ),
              ),
            ),
            InkWell(
              enableFeedback: false,
              onTap: () => setState(() {
                pageIndex = 2;
              }),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: pageIndex == 2
                        ? AppColors.colorPrimaryMain
                        : AppColors.colorTextWhiteHigh),
                child: Container(
                  height: 24,
                  width: 24,
                  child: Center(
                      child: pageIndex == 2
                          ? Image.asset(
                              'assets/images/cart_white.png',
                              fit: BoxFit.contain,
                            )
                          : Image.asset(
                              'assets/images/nav_cart.png',
                              fit: BoxFit.contain,
                            )),
                ),
              ),
            ),
            InkWell(
              enableFeedback: false,
              onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(),
                  )),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: pageIndex == 3
                        ? AppColors.colorPrimaryMain
                        : AppColors.colorTextWhiteHigh),
                child: Container(
                  height: 24,
                  width: 24,
                  child: Center(
                      child: pageIndex == 3
                          ? Image.asset(
                              'assets/images/chat_white.png',
                              fit: BoxFit.contain,
                            )
                          : Image.asset(
                              'assets/images/nav_msg.png',
                              fit: BoxFit.contain,
                            )),
                ),
              ),
            ),
            InkWell(
              enableFeedback: false,
              onTap: () => setState(() {
                pageIndex = 4;
              }),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: pageIndex == 4
                        ? AppColors.colorPrimaryMain
                        : AppColors.colorTextWhiteHigh),
                child: Container(
                  height: 24,
                  width: 24,
                  child: Center(
                      child: pageIndex == 4
                          ? Image.asset(
                              'assets/images/profile_white.png',
                              fit: BoxFit.contain,
                            )
                          : Image.asset(
                              'assets/images/nav_profile.png',
                              fit: BoxFit.contain,
                            )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
