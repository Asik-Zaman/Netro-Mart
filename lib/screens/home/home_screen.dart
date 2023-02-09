import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:netro_mart_official/screens/home/banner.dart';
import 'package:netro_mart_official/screens/home/best_selling_card.dart';
import 'package:netro_mart_official/screens/home/carosal_banner.dart';
import 'package:netro_mart_official/screens/home/categories.dart';
import 'package:netro_mart_official/screens/home/details_portrait_view.dart';
import 'package:netro_mart_official/screens/home/flash_card.dart';

import 'package:netro_mart_official/screens/home/grid_card.dart';
import 'package:netro_mart_official/screens/home/sponsord_card.dart';
import 'package:netro_mart_official/screens/wishlist/wishlist.dart';
import 'package:netro_mart_official/widgets/bottom.dart';

import '../../widgets/slider_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  final scaffoldColor = Color(0xffFFFFFF);
  final greyTextColor = Color(0xff6F6879);
  final emailTextColor = Color(0xff264653);
  final hintColor = Color(0xff6C6C6C);
  final buttonColor = Color(0xff2A9D8F);
  final dontAccountColor = Color(0xff303952);
  final boderColor = Color(0xffE9F1F4);
  final signColor = Color(0xffFF7A00);

  List<String> images = [
    "assets/images/Image_b.png",
    "assets/images/Image_b.png",
    "assets/images/Image_b.png",
  ];

  List<String> categoryName = [
    'All',
    'Clothing',
    'Winter Special',
    'Clothing',
    'Shoes',
    'Watches',
    'All',
    'Clothing',
    'WinterSpecial',
  ];
  @override
  Widget build(BuildContext context) {
    //final widths = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      bottomNavigationBar: BottomNav(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Container(
              height: 40,
              width: 328.w,
              child: Row(
                children: [
                  Container(
                      height: 25.h,
                      width: 26.w,
                      child: SvgPicture.asset(
                        'assets/images/menu.svg',
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                    width: 17.w,
                  ),
                  Container(
                    height: 40.h,
                    width: 210.w,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide:
                                BorderSide(color: Color(0xff2A9D8F), width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide:
                                BorderSide(color: Color(0xffE9F1F4), width: 1),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.w, vertical: 12.h),
                          hintText: 'Search your product',
                          hintStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Sora',
                              color: Color(0xff6C6C6C))),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Container(
                      height: 21.h,
                      width: 20.w,
                      child: SvgPicture.asset('assets/images/bell.svg')),
                  SizedBox(
                    width: 16.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Wishlist()));
                    },
                    child: SizedBox(
                        height: 21.h,
                        width: 20.w,
                        child: SvgPicture.asset('assets/images/heart.svg')),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 19.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 144.h,
                width: double.infinity,
                child: PageView.builder(onPageChanged: (index) {
                  setState(() {
                    currentIndex = index % images.length;
                  });
                }, itemBuilder: ((context, index) {
                  return Container(
                    height: 144.h,
                    width: 328.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/Image_b.png',
                          ),
                          fit: BoxFit.cover,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Nike Shoes Air Max',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'Sora',
                                  color: Color(0xff264653),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Men’s Shoes',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Sora',
                                  color: Color(0xff6C6C6C),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetialsPortraitView()));
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.r)),
                                    backgroundColor: Color(0xFF2A9D8F)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 4),
                                  child: Text(
                                    'Shop now',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Sora',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ))
                          ],
                        ),
                        Image(
                          image: AssetImage('assets/images/Image.png'),
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  );
                })),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < images.length; i++)
                  buildIndicator(currentIndex == i)
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Container(
                    height: 21.h,
                    width: 220.w,
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          fontFamily: "Sora",
                          fontSize: 16.sp,
                          color: emailTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 12.sp,
                            color: buttonColor,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 9.48.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Color(0xFF2A9D8F),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Category(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flash Sale',
                    style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 16.sp,
                        color: emailTextColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 12.sp,
                            color: buttonColor,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 7.48.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Color(0xFF2A9D8F),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  FlashCard(
                    title: 'Nike running shoe',
                    image: 'assets/images/new_shoes.png',
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  FlashCard(
                    title: 'Smartphone',
                    image: 'assets/images/new_phone.png',
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  FlashCard(
                    title: 'Watch for Men',
                    image: 'assets/images/new_watch.png',
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Selling',
                    style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 16.sp,
                        color: emailTextColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 12.sp,
                            color: buttonColor,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 7.48.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Color(0xFF2A9D8F),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(children: [
                BestSellingcard(
                    image: 'assets/images/pink_shoes1.png',
                    price: '421.99',
                    title: 'Running shoe'),
                SizedBox(
                  width: 12.w,
                ),
                BestSellingcard(
                    image: 'assets/images/black_watch.png',
                    price: '19.99',
                    title: 'Watch for men'),
                SizedBox(
                  width: 12.w,
                ),
                BestSellingcard(
                    image: 'assets/images/black_jacket1.png',
                    price: '199.95',
                    title: 'Coat down...')
              ]),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              height: 100.h,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      BannerCard(image: 'assets/images/ban_.png'),
                      SizedBox(
                        width: 12.w,
                      ),
                      BannerCard(
                        image: 'assets/images/Banner 2.png',
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Products',
                    style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 16.sp,
                        color: emailTextColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 12.sp,
                            color: buttonColor,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 7.48.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Color(0xFF2A9D8F),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(children: [
                BestSellingcard(
                    image: 'assets/images/pink_shoes1.png',
                    price: '421.99',
                    title: 'Running shoe'),
                SizedBox(
                  width: 12.w,
                ),
                BestSellingcard(
                    image: 'assets/images/black_watch.png',
                    price: '19.99',
                    title: 'Watch for men'),
                SizedBox(
                  width: 12.w,
                ),
                BestSellingcard(
                    image: 'assets/images/black_jacket1.png',
                    price: '199.95',
                    title: 'Coat down...'),
              ]),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              height: 124.h,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      CarosalBanner(image: 'assets/images/Banner_left.png'),
                      SizedBox(
                        width: 12.w,
                      ),
                      CarosalBanner(image: 'assets/images/Carosal_banner.png'),
                      SizedBox(
                        width: 12.w,
                      ),
                      CarosalBanner(
                        image: 'assets/images/Banner_right.png',
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sponsored',
                    style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 16.sp,
                        color: emailTextColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 12.sp,
                            color: buttonColor,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 7.48.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Color(0xFF2A9D8F),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(children: [
                SponsoredCard(
                    image: 'assets/images/pink_shoes1.png',
                    price: '421.99',
                    title: 'Running shoe'),
                SizedBox(
                  width: 12.w,
                ),
                SponsoredCard(
                    image: 'assets/images/black_watch.png',
                    price: '19.99',
                    title: 'Watch for men'),
                SizedBox(
                  width: 12.w,
                ),
                SponsoredCard(
                    image: 'assets/images/black_jacket1.png',
                    price: '199.95',
                    title: 'Coat down...'),
              ]),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: ListView.builder(
                itemCount: categoryName.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SizedBox(
                        width: 13.w,
                      ),
                      Text(
                        categoryName[index],
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: index == 0
                                ? Color(0xFF2A9D8F)
                                : Color(0xFF264653)),
                      ),
                    ],
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            GridCard(),
          ],
        ),
      ),
    );
  }
}