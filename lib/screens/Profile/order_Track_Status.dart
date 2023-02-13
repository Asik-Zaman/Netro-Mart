import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';

class OrderTrackStatus extends StatefulWidget {
  const OrderTrackStatus({super.key});

  @override
  State<OrderTrackStatus> createState() => _OrderTrackStatusState();
}

class _OrderTrackStatusState extends State<OrderTrackStatus>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<dynamic, dynamic>> wishItems = [
      {
        'image': 'assets/images/black_watch.png',
        'title': 'Nike Shoes Air Max',
        'price': '\$321.99',
        'size': 9,
        'status': 'Delivered',
        'color': Color(0xff2A9D8F),
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/black_jacket1.png',
        'title': 'Nike Air Zoom Pegasus 39',
        'price': '\$135.00',
        'size': 'S',
        'color': Color(0xff2A9D8F),
        'status': 'Processing',
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/new_shoes.png',
        'title': 'Nike Shoes Air Max',
        'price': '\$321.99',
        'size': 9,
        'color': Color(0xff2A9D8F),
        'status': 'Delivered',
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/pink_shoes1.png',
        'title': 'Nike Air Zoom Pegasus 39',
        'price': '\$135.00',
        'size': 8,
        'color': Color(0xff2A9D8F),
        'status': 'Delivered',
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/grid_blue.png',
        'title': 'Nike Shoes Air Max',
        'price': '\$321.99',
        'size': 'xl',
        'color': Color(0xff2A9D8F),
        'status': 'Processing',
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/grid_hoodie.png',
        'title': 'Nike Air Zoom Pegasus 39',
        'price': '\$135.00',
        'size': '2xl',
        'color': Color(0xff2A9D8F),
        'status': 'Delivered',
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/grid_polo.png',
        'title': 'Nike Shoes Air Max',
        'price': '\$321.99',
        'size': 'M',
        'color': Color(0xff2A9D8F),
        'status': 'Delivered',
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/grid_white.png',
        'title': 'Nike Air Zoom Pegasus 39',
        'price': '\$135.00',
        'size': 'M',
        'color': Color(0xff2A9D8F),
        'status': 'Processing',
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/black_watch.png',
        'title': 'Nike Shoes Air Max',
        'price': '\$321.99',
        'size': 9,
        'color': Color(0xff2A9D8F),
        'status': 'Delivered',
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/black_jacket1.png',
        'title': 'Nike Air Zoom Pegasus 39',
        'price': '\$135.00',
        'size': '3xl',
        'color': Color(0xff2A9D8F),
        'status': 'Processing',
        'timeStamp': '30 Dec 22'
      },
      {
        'image': 'assets/images/new_shoes.png',
        'title': 'Nike Shoes Air Max',
        'price': '\$321.99',
        'size': 9,
        'color': Color(0xff2A9D8F),
        'status': 'Processing',
        'timeStamp': '30 Dec 22'
      },
    ];
    
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
      body: Container(
        height: MediaQuery.of(context).size.height,
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
                    "My Order",
                    style: TextStyle(
                        color: AppColors.descColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 25,
                          offset: Offset(0, 5),
                          color: Color(0xff000000).withOpacity(.05))
                    ]),
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.colorPrimaryMain,
                  ),
                  controller: _tabController,
                  isScrollable: true,
                  unselectedLabelColor: AppColors.colorTextBlackMid,
                  tabs: [
                    Container(
                      width: 150,
                      child: Tab(
                        child: Text(
                          'Order Status',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      child: Tab(
                        child: Text(
                          'Track My Order',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Container(
                  height: 650.h,
                  width: double.infinity,
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 16.h),
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: wishItems.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                              bottom: 8.h, left: 16.w, right: 16.w),
                          height: 78.h,
                          width: 304.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 25,
                                    offset: Offset(0, 5),
                                    color: Color(0xff000000).withOpacity(.05))
                              ]),
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
                                              wishItems[index]['image']),
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
                                            color: Color(0xff303952),
                                            fontWeight: FontWeight.w600,
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
                                                color: Color(0xff303952),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 8.sp),
                                          ),
                                          Container(
                                            height: 13.h,
                                            width: 12.w,
                                            decoration: BoxDecoration(
                                                color: Color(0xffFFFFFF),
                                                border: Border.all(
                                                    width: 2,
                                                    color: wishItems[index]
                                                        ['color']),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        60.r)),
                                          ),
                                          SizedBox(
                                            width: 16.w,
                                          ),
                                          Text(
                                            'Size: ',
                                            style: TextStyle(
                                                color: Color(0xff303952),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 8.sp),
                                          ),
                                          Container(
                                            height: 16.h,
                                            width: 16.w,
                                            decoration: BoxDecoration(
                                                color: Color(0xffE9F1F4),
                                                borderRadius:
                                                    BorderRadius.circular(4.r)),
                                            child: Center(
                                                child: Text(
                                              wishItems[index]['size']
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  color: Color(0xff264653),
                                                  fontWeight: FontWeight.w400),
                                            )),
                                          ),
                                          SizedBox(
                                            width: 43.w,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Text(
                                        wishItems[index]['price'],
                                        style: TextStyle(
                                            color: Color(0xff303952),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10.sp),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Container(
                                  height: 70,
                                  width: 80,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        wishItems[index]['status'],
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w600,
                                            color: wishItems[index]['status'] ==
                                                    'Delivered'
                                                ? AppColors.colorStatusSuccess
                                                : AppColors.colorStatusInfo),
                                      ),
                                      SizedBox(height: 4.h),
                                      Text(
                                        wishItems[index]['timeStamp'],
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.colorTextLow),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
                ),
                
                Column(
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Container(
                        height: 46.h,
                        width: double.infinity,
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
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
                              hintText: 'Search your product',
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Sora',
                                  color: Color(0xff6C6C6C))),
                        ),
                      ),
                    ),
                    Container(
                      height: 575.h,
                      width: double.infinity,
                      child: ListView.builder(
                          padding: EdgeInsets.only(top: 16.h),
                          physics: AlwaysScrollableScrollPhysics(),
                          itemCount: wishItems.length,
                          itemBuilder: ((context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 8.h, left: 16.w, right: 16.w),
                                  child: Text(
                                    'ID: 1D56X750H2',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.colorSecondaryMain),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 8.h, left: 16.w, right: 16.w),
                                  height: 78.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 25,
                                            offset: Offset(0, 5),
                                            color: Color(0xff000000)
                                                .withOpacity(.05))
                                      ]),
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
                                                    color: Color(0xff303952),
                                                    fontWeight: FontWeight.w600,
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
                                                        color:
                                                            Color(0xff303952),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 8.sp),
                                                  ),
                                                  Container(
                                                    height: 13.h,
                                                    width: 12.w,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffFFFFFF),
                                                        border: Border.all(
                                                            width: 2,
                                                            color:
                                                                wishItems[index]
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
                                                        color:
                                                            Color(0xff303952),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 8.sp),
                                                  ),
                                                  Container(
                                                    height: 16.h,
                                                    width: 16.w,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffE9F1F4),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.r)),
                                                    child: Center(
                                                        child: Text(
                                                      wishItems[index]['size']
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 8.sp,
                                                          color:
                                                              Color(0xff264653),
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )),
                                                  ),
                                                  SizedBox(
                                                    width: 43.w,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 4.h,
                                              ),
                                              Text(
                                                wishItems[index]['price'],
                                                style: TextStyle(
                                                    color: Color(0xff303952),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 10.sp),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Container(
                                          height: 70,
                                          width: 80,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                wishItems[index]['status'],
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: wishItems[index]
                                                                ['status'] ==
                                                            'Delivered'
                                                        ? AppColors
                                                            .colorStatusSuccess
                                                        : AppColors
                                                            .colorStatusInfo),
                                              ),
                                              SizedBox(height: 4.h),
                                              Text(
                                                wishItems[index]['timeStamp'],
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 8.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        AppColors.colorTextLow),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 45.h,
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      bottom: 24.h, left: 16.w, right: 16.w),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 2.h,
                                            width: 26.w,
                                            color: Color(0xff2A9D8F),
                                          ),
                                          Container(
                                            height: 16.h,
                                            width: 16.h,
                                            decoration: BoxDecoration(
                                                color: Color(0xff2A9D8F),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        60.r)),
                                          ),
                                          Container(
                                            height: 2.h,
                                            width: 70.w,
                                            color: index == 1
                                                ? Color(0xff2A9D8F)
                                                : Color(0xff919191),
                                          ),
                                          Container(
                                            height: 16.h,
                                            width: 16.h,
                                            decoration: BoxDecoration(
                                                color: index == 1
                                                    ? Color(0xff2A9D8F)
                                                    : Color(0xff919191),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        60.r)),
                                          ),
                                          Container(
                                            height: 2.h,
                                            width: 70.w,
                                            color: index == 1
                                                ? Color(0xff2A9D8F)
                                                : Color(0xff919191),
                                          ),
                                          Container(
                                            height: 16.h,
                                            width: 16.h,
                                            decoration: BoxDecoration(
                                                color: index == 1
                                                    ? Color(0xff2A9D8F)
                                                    : Color(0xff919191),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        60.r)),
                                          ),
                                          Container(
                                            height: 2.h,
                                            width: 70.w,
                                            color: Color(0xff919191),
                                          ),
                                          Container(
                                            height: 16.h,
                                            width: 16.h,
                                            decoration: BoxDecoration(
                                                color: Color(0xff919191),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        60.r)),
                                          ),
                                          Container(
                                            height: 2.h,
                                            width: 26.w,
                                            color: Color(0xff919191),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text('Package'),
                                          Text('Picked'),
                                          Text('Shipped'),
                                          Text('Delivered'),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          })),
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
