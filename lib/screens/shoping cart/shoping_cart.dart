import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/Address/address.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class ShopingCart extends StatefulWidget {
  const ShopingCart({super.key});

  @override
  State<ShopingCart> createState() => _ShopingCartState();
}

class _ShopingCartState extends State<ShopingCart> {
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
                      "My Shopping cart",
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
                                  setState(() {
                                    valuefirst = value;
                                  });
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
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          backgroundColor:
                                              AppColors.colorPrimaryLightest,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(24.r)),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 24.w,
                                                right: 24.w,
                                                top: 40.h),
                                            child: Container(
                                              height: 318,
                                              width: 296,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height: 80,
                                                    width: 80,
                                                    child: Image.asset(
                                                      'assets/images/delete.png',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 32.h,
                                                  ),
                                                  Container(
                                                    height: 80.h,
                                                    width: 248.w,
                                                    child: Text(
                                                      'Would you like to remove this product from your shopping cart, or just click the delete button?.',
                                                      style: TextStyle(
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors
                                                            .colorTextLow,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 24.h,
                                                  ),
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 14.w),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            child: MyButton(
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                                color: AppColors
                                                                    .colorStatusError,
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                text: "Delete"),
                                                          ),
                                                          SizedBox(
                                                            width: 8.w,
                                                          ),
                                                          Expanded(
                                                            child: MyButton(
                                                                borderColor:
                                                                    AppColors
                                                                        .colorSecondaryMain,
                                                                textColor: AppColors
                                                                    .colorSecondaryMain,
                                                                color: AppColors
                                                                    .colorPrimaryLightest,
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                },
                                                                text: "Cancel"),
                                                          ),
                                                        ],
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
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
                                        padding:
                                            EdgeInsets.symmetric(vertical: 8.h),
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
                                              width: 12.w,
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
                                                        width: 24.w,
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
                height: 24.h,
              ),
              Container(
                height: 58.h,
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
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Container(
                        height: 42.h,
                        width: 193.w,
                        decoration: BoxDecoration(
                            color: Color(0xffF7F7F7),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: TextField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xff2A9D8F), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.r),
                                borderSide: BorderSide(
                                    color: Color(0xffE9F1F4), width: 1),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 12.h),
                              hintText: 'Enter the coupon code',
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Sora',
                                  color: Color(0xff6C6C6C))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Container(
                      height: 40.h,
                      width: 91.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: AppColors.titleColor,
                          )),
                      child: Center(
                          child: Text(
                        'Apply',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff264653),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              valuefirst == false
                  ? Container(
                      height: 68.h,
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
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.w),
                            child: Container(
                                height: 44.h,
                                width: 142.w,
                                decoration: BoxDecoration(
                                    color: Color(0xffF7F7F7),
                                    borderRadius: BorderRadius.circular(8.r)),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 4.h),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Total Items',
                                        style: TextStyle(
                                            color: Color(0xff303952),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.sp),
                                      ),
                                      Text(
                                        '3',
                                        style: TextStyle(
                                            color: Color(0xff303952),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.sp),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16.w),
                            child: Container(
                              height: 44.h,
                              width: 142.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffF7F7F7),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Padding(
                                padding: EdgeInsets.only(top: 4.h),
                                child: Column(
                                  children: [
                                    Text(
                                      'Total Price',
                                      style: TextStyle(
                                          color: Color(0xff303952),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.sp),
                                    ),
                                    Text('\$546.98',
                                        style: TextStyle(
                                            color: Color(0xff303952),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.sp))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      height: 170.h,
                      width: 296.w,
                      child: Column(
                        children: [
                          TotalPrice(
                            title: 'Sub Total',
                            amount: '\$456.99',
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          TotalPrice(
                            title: 'Coupon',
                            amount: '\$-20',
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          TotalPrice(
                            title: 'Shipping Fee',
                            amount: '\$4.99',
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          TotalPrice(
                            title: 'Tax',
                            amount: '\$15.00',
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Divider(
                            color: Color(0xffE9F1F4),
                            thickness: 2.0,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    color: Color(0xff303952),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp),
                              ),
                              Text('\$456.98',
                                  style: TextStyle(
                                      color: Color(0xff303952),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp))
                            ],
                          )
                        ],
                      ),
                    ),
              SizedBox(
                height: 37.h,
              ),
              MyButton(
                  textColor: AppColors.white,
                  color: AppColors.themeColor,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Address()));
                  },
                  text: "Checkout"),
            ],
          ),
        ),
      ),
    );
  }
}

class TotalPrice extends StatelessWidget {
  final String title;
  final String amount;
  const TotalPrice({super.key, required this.amount, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Color(0xff303952),
              fontWeight: FontWeight.w600,
              fontSize: 12.sp),
        ),
        Text(amount,
            style: TextStyle(
                color: Color(0xff303952),
                fontWeight: FontWeight.w400,
                fontSize: 12.sp))
      ],
    );
  }
}
