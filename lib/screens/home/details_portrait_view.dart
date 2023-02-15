import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/screens/home/best_selling_card.dart';
import 'package:netro_mart_official/screens/home/grid_card.dart';
import 'package:netro_mart_official/widgets/source.dart';

class DetialsPortraitView extends StatefulWidget {
  DetialsPortraitView({super.key});

  @override
  State<DetialsPortraitView> createState() => _DetialsPortraitViewState();
}

class _DetialsPortraitViewState extends State<DetialsPortraitView> {
  bool isSelected = false;
  List<Map<dynamic, dynamic>> colorList = [
    {
      'color': Color(0xff2A9D8F),
      'isSelected': true,
    },
    {
      'color': Color(0xffFF6B69),
      'isSelected': true,
    },
    {
      'color': Color(0xffFFB358),
      'isSelected': true,
    },
    {
      'color': Color(0xff5A5EBC),
      'isSelected': true,
    },
    {
      'color': Color(0xff55ABCD),
      'isSelected': true,
    },
  ];
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFFF),
      bottomNavigationBar: Container(
        height: 72.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 244, 240, 240),
                blurRadius: 10,
                spreadRadius: 10,
                offset: Offset(5, 10))
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40.h,
                width: 120.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff264653), width: 1),
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFFFFFFF)),
                child: Center(
                    child: Text(
                  'Add to cart',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff264653),
                      fontWeight: FontWeight.w600),
                )),
              ),
              Container(
                height: 40.h,
                width: 120.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF2A9D8F)),
                child: Center(
                    child: Text(
                  'Buy Now',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600),
                )),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 352.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Product.png'),
                          fit: BoxFit.cover)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w, top: 58.64.h),
                      child: InkWell(
                        onTap: (() => Navigator.of(context).pop()),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 16.sp,
                          color: Color(0xff6F6879),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 18.w, top: 56.h),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite == true
                                ? isFavorite = false
                                : isFavorite = true;
                          });
                        },
                        child: Container(
                          height: 18.48.h,
                          width: 20.w,
                          child: Icon(
                            Icons.favorite,
                            color: isFavorite
                                ? Color(0xffFF5656)
                                : Color(0xff6F6879),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 158.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 25,
                          offset: Offset(0, 5),
                          color: Color(0xff000000).withOpacity(.05))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                      child: Container(
                        height: 29.h,
                        width: 296.w,
                        child: FittedBox(
                          child: Text(
                            'Nike Shoes Air Max NKM15445 TN12',
                            style: TextStyle(
                                color: Color(0xff264653),
                                fontSize: 16.sp,
                                fontFamily: 'Sora',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 21.h,
                            width: 150.w,
                            child: Text(
                              '\$421.99',
                              style: TextStyle(
                                  color: Color(0xff264653),
                                  fontSize: 16.sp,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Row(
                            children: [
                              FittedBox(
                                child: Text(
                                  '4.0',
                                  style: TextStyle(
                                      color: Color(0xff264653),
                                      fontSize: 14.sp,
                                      fontFamily: 'Sora',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 4.49.w,
                          ),
                          Icon(
                            Icons.star,
                            size: 15.sp,
                            color: Color(0xffF4A100),
                          ),
                          SizedBox(
                            width: 4.49.w,
                          ),
                          FittedBox(
                            child: Text(
                              '(425)',
                              style: TextStyle(
                                  color: Color(0xff264653),
                                  fontSize: 14.sp,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 16.w, right: 16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 24.h,
                                width: 130.w,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: colorList.length,
                                    itemBuilder: ((context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            colorList[index]['isSelected'] ==
                                                    true
                                                ? colorList[index]
                                                    ['isSelected'] = false
                                                : colorList[index]
                                                    ['isSelected'] = true;
                                          });
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 4.w),
                                          height: 20.h,
                                          width: 22.w,
                                          decoration: BoxDecoration(
                                              color: colorList[index]
                                                      ['isSelected']
                                                  ? colorList[index]['color']
                                                  : Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                        ),
                                      );
                                    }))),
                            SizedBox(
                              width: 16.w,
                            ),
                            Row(children: [
                              Container(
                                height: 18.h,
                                width: 80.w,
                                child: FittedBox(
                                  child: Text(
                                    '6 Vouchers',
                                    style: TextStyle(
                                        color: Color(0xff2A9D8F),
                                        fontSize: 14.sp,
                                        fontFamily: 'Sora',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.64.w,
                              ),
                              Container(
                                  height: 18.h,
                                  width: 18.w,
                                  child: Center(
                                    child: PopupMenuButton(
                                        icon: Icon(
                                          Icons.expand_more,
                                          color: Color(0xff2A9D8F),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.r)),
                                        itemBuilder: (context) => [
                                              PopupMenuItem(
                                                value: 1,
                                                child: Text('7 Vouchers'),
                                              ),
                                              PopupMenuItem(
                                                value: 2,
                                                child: Text('8 Vouchers'),
                                              ),
                                              PopupMenuItem(
                                                value: 3,
                                                child: Text('9 Vouchers'),
                                              ),
                                              PopupMenuItem(
                                                value: 4,
                                                child: Text('10 Vouchers'),
                                              )
                                            ]),
                                  )),
                            ])
                          ],
                        )),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      child: Container(
                        height: 24.h,
                        width: 296.w,
                        child: Row(
                          children: [
                            Text(
                              'Size',
                              style: TextStyle(
                                  color: Color(0xff264653),
                                  fontSize: 12.sp,
                                  fontFamily: 'Sora',
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Row(
                              children: [
                                buildRectangle('6'),
                                SizedBox(
                                  width: 4.w,
                                ),
                                buildRectangle('7'),
                                SizedBox(
                                  width: 4.w,
                                ),
                                buildRectangle('8'),
                                SizedBox(
                                  width: 4.w,
                                ),
                                buildRectangle('9'),
                                SizedBox(
                                  width: 4.w,
                                ),
                                buildRectangle('10'),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32.w),
                          child: Container(
                            height: 370.h,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(top: 24.h),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                      top: -5.h,
                                      right: -2.w,
                                      child: InkWell(
                                        onTap: (() => Navigator.pop(context)),
                                        child: Container(
                                            height: 28.h,
                                            width: 28.w,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF7F7F7),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        55.r)),
                                            child: Icon(
                                              Icons.close,
                                              color: Color(0xff03053D),
                                            )),
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Specifications',
                                        style: TextStyle(
                                            color: Color(0xff264653),
                                            fontSize: 16.sp,
                                            fontFamily: 'Sora',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      buildDialog('Brand', 'Nike'),
                                      Divider(thickness: 1),
                                      buildDialog(
                                          'Product type', 'Running shoe'),
                                      Divider(thickness: 1),
                                      buildDialog(
                                          'Model', 'Air Zoom Pegasus 39'),
                                      Divider(thickness: 1),
                                      buildDialog('Box content', '1 pair shoe'),
                                      Divider(thickness: 1),
                                      buildDialog('SKU', '214965J29-l6796de26'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: buildCard('Specifications', 'Brand, Power, Model', 60.0,
                  double.infinity),
            ),
            SizedBox(
              height: 8.h,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32.w),
                          child: Container(
                            height: 302.h,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(top: 24.h),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                      top: -5.h,
                                      right: -2.w,
                                      child: InkWell(
                                        onTap: (() => Navigator.pop(context)),
                                        child: Container(
                                            height: 28.h,
                                            width: 28.w,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF7F7F7),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        55.r)),
                                            child: Icon(
                                              Icons.close,
                                              color: Color(0xff03053D),
                                            )),
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delivery',
                                        style: TextStyle(
                                            color: Color(0xff264653),
                                            fontSize: 16.sp,
                                            fontFamily: 'Sora',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      Container(
                                        height: 59.h,
                                        width: 248.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            color: Color(0xffFFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 25,
                                                  offset: Offset(0, 5),
                                                  color: Color(0xff000000)
                                                      .withOpacity(.05))
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Free Delivery',
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: Color(0xff264653),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  '5-10 Day Delivery',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: Color(0xff919191),
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                            Container(
                                              height: 26.h,
                                              width: 69.w,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffF7F7F7),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r)),
                                              child: Center(
                                                  child: Text(
                                                '\$0.00',
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff264653),
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Container(
                                        height: 59.h,
                                        width: 248.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            color: Color(0xff2A9D8F),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 25,
                                                  offset: Offset(0, 5),
                                                  color: Color(0xff000000)
                                                      .withOpacity(.05))
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Standard Delivery',
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: Color(0xffFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  '3-5 Day Delivery',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: Color(0xffFFFFFF),
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                            Container(
                                              height: 26.h,
                                              width: 69.w,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffF7F7F7),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r)),
                                              child: Center(
                                                  child: Text(
                                                '\$4.99',
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff264653),
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Container(
                                        height: 59.h,
                                        width: 248.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            color: Color(0xffFFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 25,
                                                  offset: Offset(0, 5),
                                                  color: Color(0xff000000)
                                                      .withOpacity(.05))
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Express Delivery',
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: Color(0xff264653),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Text(
                                                  '1-2 Day Delivery',
                                                  style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: Color(0xff919191),
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                            Container(
                                              height: 26.h,
                                              width: 69.w,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffF7F7F7),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r)),
                                              child: Center(
                                                  child: Text(
                                                '\$0.00',
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Color(0xff264653),
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: buildCard('Delivery', 'Rajshahi,Rajshahi,Bangl...', 60.0,
                  double.infinity),
            ),
            SizedBox(
              height: 8.h,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32.w),
                          child: Container(
                            height: 281.h,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(top: 24.h),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                      top: -5.h,
                                      right: -2.w,
                                      child: InkWell(
                                        onTap: (() => Navigator.pop(context)),
                                        child: Container(
                                            height: 28.h,
                                            width: 28.w,
                                            decoration: BoxDecoration(
                                                color: Color(0xffF7F7F7),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        55.r)),
                                            child: Icon(
                                              Icons.close,
                                              color: Color(0xff03053D),
                                            )),
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Service',
                                        style: TextStyle(
                                            color: Color(0xff264653),
                                            fontSize: 16.sp,
                                            fontFamily: 'Sora',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 30.h,
                                      ),
                                      Expanded(
                                        child: ListView.builder(
                                            itemCount: DataSource
                                                .questionAnswer.length,
                                            itemBuilder: (context, index) {
                                              return Column(
                                                children: [
                                                  ExpansionTile(
                                                    title: Text(
                                                      DataSource.questionAnswer[
                                                          index]['question'],
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff6F6879),
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(20.0),
                                                        child: Text(
                                                          DataSource
                                                                  .questionAnswer[
                                                              index]['answer'],
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff6C6C6C),
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Divider(
                                                    thickness: 1,
                                                    color: Color(0xffF7F7F7),
                                                  )
                                                ],
                                              );
                                            }),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: buildDelivaryCard('Service',
                  '. 100% Authentic\n. 14 Days Easy Return\n. 2 Years Brand Warranty'),
            ),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reviews',
                    style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 16.sp,
                        color: Color(0xff264653),
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 12.sp,
                            color: Color(0xff2A9D8F),
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
            Container(
                height: 205.h,
                width: double.infinity,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 25,
                      offset: Offset(0, 5),
                      color: Color(0xff000000).withOpacity(.05))
                ]),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12.w),
                      height: 182.h,
                      width: 296.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 8.h),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 28.h,
                                width: 272.w,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 24.h,
                                      width: 24.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(35.r),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/avatar.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Container(
                                      height: 28.h,
                                      width: 233.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 18.h,
                                                width: 144.w,
                                                child: Text(
                                                  'Tanjima Tazreen',
                                                  style: TextStyle(
                                                      color: Color(0xff264653),
                                                      fontSize: 14.sp,
                                                      fontFamily: 'Sora',
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              Container(
                                                  height: 16.h,
                                                  width: 80.w,
                                                  child: FittedBox(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: Color.fromARGB(
                                                              255,
                                                              220,
                                                              211,
                                                              211),
                                                          size: 18.sp,
                                                        ),
                                                      ],
                                                    ),
                                                  ))
                                            ],
                                          ),
                                          Container(
                                              height: 10.h,
                                              width: 240.w,
                                              child: Text(
                                                '26 Nov 2022',
                                                style: TextStyle(
                                                    color: Color(0xff6F6879),
                                                    fontSize: 8.sp,
                                                    fontFamily: 'Sora',
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Container(
                                height: 70.h,
                                width: 272.w,
                                child: Text(
                                  'Quality Product with Reasonable Price. Same Price e Market Available Product theke Onk valo. Super Fast Delivery,Thanks Seller😍',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Container(
                                height: 60.h,
                                width: 272.w,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.w, right: 13.w),
                                        child: Container(
                                          height: 59.h,
                                          width: 34.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/shoe1.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 11.h, horizontal: 8.w),
                                        child: Container(
                                          height: 38.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/new_shoes.png'),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.w, right: 13.w),
                                        child: Container(
                                          height: 60.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/shoe3.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.w, right: 13.w),
                                        child: Container(
                                          height: 60.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/shoe4.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                   
                    Container(
                      margin: EdgeInsets.only(right: 12.w),
                      height: 182.h,
                      width: 296.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 8.h),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 28.h,
                                width: 272.w,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 24.h,
                                      width: 24.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(35.r),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/avatar.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Container(
                                      height: 28.h,
                                      width: 233.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 18.h,
                                                width: 144.w,
                                                child: Text(
                                                  'Tanjima Tazreen',
                                                  style: TextStyle(
                                                      color: Color(0xff264653),
                                                      fontSize: 14.sp,
                                                      fontFamily: 'Sora',
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              Container(
                                                  height: 16.h,
                                                  width: 80.w,
                                                  child: FittedBox(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: Color.fromARGB(
                                                              255,
                                                              220,
                                                              211,
                                                              211),
                                                          size: 18.sp,
                                                        ),
                                                      ],
                                                    ),
                                                  ))
                                            ],
                                          ),
                                          Container(
                                              height: 10.h,
                                              width: 240.w,
                                              child: Text(
                                                '26 Nov 2022',
                                                style: TextStyle(
                                                    color: Color(0xff6F6879),
                                                    fontSize: 8.sp,
                                                    fontFamily: 'Sora',
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Container(
                                height: 70.h,
                                width: 272.w,
                                child: Text(
                                  'Quality Product with Reasonable Price. Same Price e Market Available Product theke Onk valo. Super Fast Delivery,Thanks Seller😍',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Container(
                                height: 60.h,
                                width: 272.w,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.w, right: 13.w),
                                        child: Container(
                                          height: 59.h,
                                          width: 34.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/shoe1.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 11.h, horizontal: 8.w),
                                        child: Container(
                                          height: 38.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/new_shoes.png'),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.w, right: 13.w),
                                        child: Container(
                                          height: 60.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/shoe3.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.w, right: 13.w),
                                        child: Container(
                                          height: 60.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/shoe4.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8.w),
                      height: 182.h,
                      width: 296.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xffFFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 8.h),
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                height: 28.h,
                                width: 272.w,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 24.h,
                                      width: 24.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(35.r),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/avatar.png'),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Container(
                                      height: 28.h,
                                      width: 233.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 18.h,
                                                width: 144.w,
                                                child: Text(
                                                  'Tanjima Tazreen',
                                                  style: TextStyle(
                                                      color: Color(0xff264653),
                                                      fontSize: 14.sp,
                                                      fontFamily: 'Sora',
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              Container(
                                                  height: 16.h,
                                                  width: 80.w,
                                                  child: FittedBox(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Color(0xffF4A100),
                                                          size: 18.sp,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: Color.fromARGB(
                                                              255,
                                                              220,
                                                              211,
                                                              211),
                                                          size: 18.sp,
                                                        ),
                                                      ],
                                                    ),
                                                  ))
                                            ],
                                          ),
                                          Container(
                                              height: 10.h,
                                              width: 240.w,
                                              child: Text(
                                                '26 Nov 2022',
                                                style: TextStyle(
                                                    color: Color(0xff6F6879),
                                                    fontSize: 8.sp,
                                                    fontFamily: 'Sora',
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Container(
                                height: 70.h,
                                width: 272.w,
                                child: Text(
                                  'Quality Product with Reasonable Price. Same Price e Market Available Product theke Onk valo. Super Fast Delivery,Thanks Seller😍',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Container(
                                height: 60.h,
                                width: 272.w,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.w, right: 13.w),
                                        child: Container(
                                          height: 59.h,
                                          width: 34.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/shoe1.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 11.h, horizontal: 8.w),
                                        child: Container(
                                          height: 38.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/new_shoes.png'),
                                                  fit: BoxFit.cover)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.w, right: 13.w),
                                        child: Container(
                                          height: 60.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/shoe3.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4.w),
                                      height: 60.h,
                                      width: 62.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffDBDBDB),
                                          borderRadius:
                                              BorderRadius.circular(8.r)),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.w, right: 13.w),
                                        child: Container(
                                          height: 60.h,
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/shoe4.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                  ],
                )),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended by Seller',
                    style: TextStyle(
                        fontFamily: "Sora",
                        fontSize: 16.sp,
                        color: Color(0xff264653),
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 12.sp,
                            color: Color(0xff2A9D8F),
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
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
              ),
              child: Container(
                height: 226.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 25,
                          offset: Offset(0, 5),
                          color: Color(0xff000000).withOpacity(.05))
                    ]),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          'Description',
                          style: TextStyle(
                              color: Color(0xff264653),
                              fontSize: 14.sp,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur. Potenti vitae mauris feugiat faucibus viverra aliquet enim. Risus eget velit pretium vitae id viverra libero. Congue elementum sed tortor commodo nisi et orci\n.Reflective details\n.Not intended for use as Personal Protective Equipment (PPE)\n.Shown: Scream Green/Coconut Milk/Black\n.Style: DZ4776-343',
                        style: TextStyle(
                            color: Color(0xff6C6C6C),
                            fontSize: 12.sp,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Container(
                height: 220.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Banner1.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Container(
                height: 220.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Banner_middle.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Container(
                height: 220.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Banner3.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff264653),
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        'See more',
                        style: TextStyle(
                            fontFamily: "Sora",
                            fontSize: 12.sp,
                            color: Color(0xff2A9D8F),
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
              height: 16.h,
            ),
            GridCard(),
          ],
        ),
      ),
    );
  }

  Widget buildRectangle(String size) {
    return Container(
      height: 24.h,
      width: 24.w,
      decoration: BoxDecoration(
          color: Color(0xffE9F1F4), borderRadius: BorderRadius.circular(4.r)),
      child: Center(
          child: Text(
        size,
        style: TextStyle(
            color: Color(0xff264653),
            fontFamily: 'Sora',
            fontWeight: FontWeight.w400),
      )),
    );
  }

  Widget buildCard(
    String title,
    String desc,
    double height,
    double width,
  ) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Container(
        height: height.h,
        width: width.w,
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
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FittedBox(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Color(0xff264653),
                      fontSize: 12.sp,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Row(
                children: [
                  FittedBox(
                    child: Text(
                      desc,
                      style: TextStyle(
                          color: Color(0xff6F6879),
                          fontSize: 12.sp,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12.sp,
                    color: Color(0xff919191),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDialog(String title, String desc) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Color(0xff6F6879),
              fontSize: 12.sp,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          desc,
          style: TextStyle(
              color: Color(0xff6C6C6C),
              fontSize: 10.sp,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget buildDelivaryCard(String title, String desc) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Container(
        height: 86.h,
        width: double.infinity,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12.h, left: 16.w),
              child: FittedBox(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Color(0xff264653),
                      fontSize: 12.sp,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h, right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        desc,
                        style: TextStyle(
                            color: Color(0xff6F6879),
                            fontSize: 12.sp,
                            fontFamily: 'Sora',
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 13.48.w,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 12.sp,
                      color: Color(0xff919191),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopUp extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  const PopUp({super.key, required this.menuList});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Container(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      itemBuilder: (context) {
        return menuList;
      },
    );
  }
}
