import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/screens/Profile/change_Password.dart';
import 'package:netro_mart_official/screens/Profile/edit_profile.dart';
import 'package:netro_mart_official/screens/Profile/faq.dart';
import 'package:netro_mart_official/screens/Profile/notification.dart';
import 'package:netro_mart_official/screens/Profile/order_Track_Status.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/Profile/privacy_Policy.dart';
import 'package:netro_mart_official/screens/Support/chat_Page.dart';
import 'package:netro_mart_official/screens/authScreen/signIn.dart';
import 'package:netro_mart_official/screens/wishlist/wishlist.dart';
import 'package:netro_mart_official/widgets/bottom.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.colorTextWhiteHigh,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => CustomBottomNav())));
                  },
                  child: Icon(Icons.arrow_back_ios,
                      size: 16.sp, color: AppColors.descColor)),
              SizedBox(width: 13.w),
              Text(
                "Profile",
                style: TextStyle(
                    color: AppColors.descColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    'assets/images/profile_pic.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'John Smith',
                  style: TextStyle(
                      color: AppColors.colorPrimaryMain,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'user@website.com',
                  style: TextStyle(
                      color: AppColors.colorTextLow,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditProfile()));
                          },
                          child: Container(
                            child: Padding(
                                padding: EdgeInsets.all(12),
                                child: ProfileSection(
                                  image: 'assets/images/person.svg',
                                  title: 'Edit Profile',
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 2,
                          height: 2,
                          color: AppColors.colorTextWhiteMid,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderTrackStatus()));
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: ProfileSection(
                                image: 'assets/images/order.svg',
                                title: 'My Orders',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 2,
                          height: 2,
                          color: AppColors.colorTextWhiteMid,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Wishlist()));
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: ProfileSection(
                                image: 'assets/images/wishlist.svg',
                                title: 'My Wishlist',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 2,
                          height: 2,
                          color: AppColors.colorTextWhiteMid,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangePassword()));
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: ProfileSection(
                                image: 'assets/images/password.svg',
                                title: 'Change password',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 2,
                          height: 2,
                          color: AppColors.colorTextWhiteMid,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotificationPage()));
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: ProfileSection(
                                image: 'assets/images/notif.svg',
                                title: 'Notifications',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 2,
                          height: 2,
                          color: AppColors.colorTextWhiteMid,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PrivacyPolicy()));
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: ProfileSection(
                                image: 'assets/images/privacy.svg',
                                title: 'Privacy Policy',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 2,
                          height: 2,
                          color: AppColors.colorTextWhiteMid,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FaqPage()));
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: ProfileSection(
                                image: 'assets/images/faq.svg',
                                title: 'FAQ',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 2,
                          height: 2,
                          color: AppColors.colorTextWhiteMid,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatPage()));
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: ProfileSection(
                                image: 'assets/images/support.svg',
                                title: 'Support',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          thickness: 2,
                          height: 2,
                          color: AppColors.colorTextWhiteMid,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: ProfileSection(
                                image: 'assets/images/logout.svg',
                                title: 'Log out',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String title;
  final String image;

  const ProfileSection({
    required this.image,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              image,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 12.w),
            Text(
              title,
              style: TextStyle(
                  color: AppColors.colorTextBlackMid,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: AppColors.grey2,
          size: 18,
        ),
      ],
    );
  }
}
