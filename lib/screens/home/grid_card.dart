import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridCard extends StatefulWidget {
  @override
  State<GridCard> createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  final List<Map<dynamic, dynamic>> gridList = [
    {
      'image': 'assets/images/grid_watch.png',
      'price': '\$199.99',
      'title': 'Tommy watch for..',
      'isFavorite': true,
    },
    {
      'image': 'assets/images/grid_polo.png',
      'price': '\$49.99',
      'title': 'Sleeve T-Shirt',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/grid_shoe.png',
      'price': '\$19.95',
      'title': 'Man running shoe',
      'isFavorite': false,
    },
    {
      'image': 'assets/images/grid_hoodie.png',
      'price': '\$19.95',
      'title': 'Redwolf sleeve Hoodie..',
      'isFavorite': true,
    },
    {
      'image': 'assets/images/grid_blue.png',
      'price': '\$199.99',
      'title': 'Sleeve T-Shirt',
      'isFavorite': true,
    },
    {
      'image': 'assets/images/grid_watch.png',
      'price': '\$199.99',
      'title': 'Tommy watch for..',
      'isFavorite': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        height: 588.h,
        width: double.infinity,
        child: GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 190.h,
              crossAxisCount: 2,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 12.h),
          itemCount: gridList.length,
          itemBuilder: ((context, index) {
            return Container(
                height: 188.h,
                width: 158.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffE9F1F4),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.r),
                              topRight: Radius.circular(8.r))),
                      height: 112.h,
                      width: 158.w,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 10.w, top: 10.h),
                              child: Container(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      gridList[index]['isFavorite'] == true
                                          ? gridList[index]['isFavorite'] =
                                              false
                                          : gridList[index]['isFavorite'] =
                                              true;
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    size: 15.sp,
                                    color: gridList[index]['isFavorite']
                                        ? Colors.red
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80.h,
                            width: 80.w,
                            child: Image.asset(
                              gridList[index]['image'],
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 76.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 249, 247, 247),
                              offset: Offset(0, 10),
                              blurRadius: 10,
                            )
                          ],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.r),
                              bottomRight: Radius.circular(8.r))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 12.h, left: 12.w, right: 12.w),
                            child: Container(
                              height: 16.h,
                              width: 134.w,
                              child: FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  gridList[index]['title'],
                                  style: TextStyle(
                                      color: Color(0xff264653),
                                      fontSize: 12.sp,
                                      fontFamily: 'Sora',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.w),
                            child: Container(
                              height: 10.h,
                              width: 134.w,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 8.sp,
                                    color: Color(0xffF4A100),
                                  ),
                                  Text(
                                    ' 425(253)',
                                    style: TextStyle(
                                        color: Color(0xff6C6C6C),
                                        fontSize: 8.sp,
                                        fontFamily: 'Sora',
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.w, right: 12.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  gridList[index]['price'],
                                  style: TextStyle(
                                      color: Color(0xff2A9D8F),
                                      fontSize: 12.sp,
                                      fontFamily: 'Sora',
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  height: 16.h,
                                  width: 16.w,
                                  child: Center(
                                      child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: 8.sp,
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color(0xff2A9D8F),
                                      borderRadius: BorderRadius.circular(100)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ));
          }),
        ),
      ),
    );
  }
}
