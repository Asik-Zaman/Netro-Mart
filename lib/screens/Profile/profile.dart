import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/screens/Profile/change_Password.dart';
import 'package:netro_mart_official/screens/Profile/edit_profile.dart';
import 'package:netro_mart_official/screens/Profile/notification.dart';
import 'package:netro_mart_official/screens/Profile/order_Track_Status.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                      "Profile",
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
                width: 328.w,
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
                          /*  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy())); */
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
                             Navigator.push(context,
                              MaterialPageRoute(builder: (context) => NotificationPage())); 
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
                          /*    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy())); */
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
                          /*  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsScreen())); */
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
                          /*     Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Statement())); */
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
                          /*     Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Statement())); */
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
