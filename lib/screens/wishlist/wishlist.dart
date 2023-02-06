import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/shoping%20cart/shoping_cart.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  var counter = 0;
  final buttonColor = Color(0xff2A9D8F);
  bool? valuefirst = false;
  List<Map<dynamic, dynamic>> wishItems = [
    {
      'image': 'assets/images/new_shoes.png',
      'title': 'Nike Shoes Air Max',
      'price': '\$321.99',
      'size': 9,
      'color': Color(0xff2A9D8F)
    },
    {
      'image': 'assets/images/pink_shoes1.png',
      'title': 'Nike Air Zoom Pegasus 39',
      'price': '\$135.00',
      'size': 8,
      'color': Color(0xff2A9D8F)
    },
  ];
  List<Map<dynamic, dynamic>> wishItems2 = [
    {
      'image': 'assets/images/hood.png',
      'title': 'Casual Hoodies for man',
      'price': '\$89.99',
      'size': 9,
      'color': Color(0xff2A9D8F)
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 54.5.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios,
                            size: 18.sp, color: AppColors.descColor)),
                    SizedBox(width: 13.w),
                    Text(
                      "My Wishlist",
                      style: TextStyle(
                          color: AppColors.descColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.5.h,
              ),
              Container(
                  height: 236.h,
                  width: 328.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 25,
                            offset: Offset(0, 5),
                            color: Color(0xff000000).withOpacity(.05))
                      ]),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Checkbox(
                                checkColor: Color(0xffFFFFFF),
                                activeColor: buttonColor,
                                value: valuefirst,
                                onChanged: (value) {
                                  valuefirst = value;
                                  setState(() {});
                                },
                              ),
                              Container(
                                height: 19.h,
                                width: 190.w,
                                child: Text(
                                  "Nike",
                                  style: TextStyle(
                                    color: Color(0xff6F6879),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Delete",
                                  style: TextStyle(
                                    color: Color(0xffFF5656),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: wishItems.length,
                              itemBuilder: ((context, index) {
                                return Column(
                                  children: [
                                    Divider(
                                      thickness: 1,
                                      color: Color(0xffE9F1F4),
                                    ),
                                    Container(
                                      height: 78.h,
                                      width: 304.w,
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
                                                    wishItems[index]['title'],
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff303952),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 10.sp),
                                                  ),
                                                  SizedBox(
                                                    height: 4.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Color: ',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff303952),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8.sp),
                                                      ),
                                                      Container(
                                                        height: 13.h,
                                                        width: 12.w,
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            border: Border.all(
                                                                width: 2,
                                                                color: wishItems[
                                                                        index]
                                                                    ['color']),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        60.r)),
                                                      ),
                                                      SizedBox(
                                                        width: 16.w,
                                                      ),
                                                      Text(
                                                        'Size: ',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff303952),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8.sp),
                                                      ),
                                                      Container(
                                                        height: 16.h,
                                                        width: 16.w,
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xffE9F1F4),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.r)),
                                                        child: Center(
                                                            child: Text(
                                                          wishItems[index]
                                                                  ['size']
                                                              .toString(),
                                                          style: TextStyle(
                                                              fontSize: 8.sp,
                                                              color: Color(
                                                                  0xff264653),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )),
                                                      ),
                                                      SizedBox(
                                                        width: 43.w,
                                                      ),
                                                      Row(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                counter != 0
                                                                    ? counter--
                                                                    : counter;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 22.h,
                                                              width: 20.w,
                                                              decoration: BoxDecoration(
                                                                  color: Color(
                                                                      0xffF7F7F7),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.r)),
                                                              child: Center(
                                                                  child: Icon(
                                                                Icons.remove,
                                                                color: Color(
                                                                    0xff919191),
                                                              )),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 4.w,
                                                          ),
                                                          Container(
                                                            height: 16.h,
                                                            width: 16.w,
                                                            child: Center(
                                                              child: Text(
                                                                '$counter',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff303952),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        12.sp),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 4.w,
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                counter++;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 22.h,
                                                              width: 20.w,
                                                              decoration: BoxDecoration(
                                                                  color: Color(
                                                                      0xffF7F7F7),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.r)),
                                                              child: Center(
                                                                  child: Icon(
                                                                Icons.add,
                                                                color: Color(
                                                                    0xff919191),
                                                              )),
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 4.h,
                                                  ),
                                                  Text(
                                                    wishItems[index]['price'],
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff303952),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 10.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              })),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 12.h,
              ),
              Container(
                  height: 142.h,
                  width: 328.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 25,
                            offset: Offset(0, 5),
                            color: Color(0xff000000).withOpacity(.05))
                      ]),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Checkbox(
                                checkColor: Color(0xffFFFFFF),
                                activeColor: buttonColor,
                                value: valuefirst,
                                onChanged: (value) {
                                  valuefirst = value;
                                  setState(() {});
                                },
                              ),
                              Container(
                                height: 19.h,
                                width: 190.w,
                                child: Text(
                                  "Bata",
                                  style: TextStyle(
                                    color: Color(0xff6F6879),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "Delete",
                                  style: TextStyle(
                                    color: Color(0xffFF5656),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: wishItems2.length,
                              itemBuilder: ((context, index) {
                                return Column(
                                  children: [
                                    Divider(
                                      thickness: 1,
                                      color: Color(0xffE9F1F4),
                                    ),
                                    Container(
                                      height: 78.h,
                                      width: 304.w,
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
                                                          wishItems2[index]
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
                                                    wishItems2[index]['title'],
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff303952),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 10.sp),
                                                  ),
                                                  SizedBox(
                                                    height: 4.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Color: ',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff303952),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8.sp),
                                                      ),
                                                      Container(
                                                        height: 13.h,
                                                        width: 12.w,
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            border: Border.all(
                                                                width: 2,
                                                                color: wishItems2[
                                                                        index]
                                                                    ['color']),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        60.r)),
                                                      ),
                                                      SizedBox(
                                                        width: 16.w,
                                                      ),
                                                      Text(
                                                        'Size: ',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff303952),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 8.sp),
                                                      ),
                                                      Container(
                                                        height: 16.h,
                                                        width: 16.w,
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xffE9F1F4),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.r)),
                                                        child: Center(
                                                            child: Text(
                                                          wishItems2[index]
                                                                  ['size']
                                                              .toString(),
                                                          style: TextStyle(
                                                              fontSize: 8.sp,
                                                              color: Color(
                                                                  0xff264653),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )),
                                                      ),
                                                      SizedBox(
                                                        width: 43.w,
                                                      ),
                                                      Row(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                counter != 0
                                                                    ? counter--
                                                                    : counter;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 22.h,
                                                              width: 20.w,
                                                              decoration: BoxDecoration(
                                                                  color: Color(
                                                                      0xffF7F7F7),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.r)),
                                                              child: Center(
                                                                  child: Icon(
                                                                Icons.remove,
                                                                color: Color(
                                                                    0xff919191),
                                                              )),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 4.w,
                                                          ),
                                                          Container(
                                                            height: 16.h,
                                                            width: 16.w,
                                                            child: Center(
                                                              child: Text(
                                                                '$counter',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff303952),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        12.sp),
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 4.w,
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                counter++;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 22.h,
                                                              width: 20.w,
                                                              decoration: BoxDecoration(
                                                                  color: Color(
                                                                      0xffF7F7F7),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.r)),
                                                              child: Center(
                                                                  child: Icon(
                                                                Icons.add,
                                                                color: Color(
                                                                    0xff919191),
                                                              )),
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 4.h,
                                                  ),
                                                  Text(
                                                    wishItems2[index]['price'],
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff303952),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 10.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              })),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 200.h,
              ),
              MyButton(
                  textColor: AppColors.white,
                  color: AppColors.themeColor,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShopingCart()));
                  },
                  text: "Checkout"),
            ],
          ),
        ),
      ),
    );
  }
}
