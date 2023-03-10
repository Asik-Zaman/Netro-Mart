import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';

class BestSellingcard extends StatefulWidget {
  final String title;
  final String image;
  final String price;
  const BestSellingcard(
      {super.key,
      required this.title,
      required this.image,
      required this.price});

  @override
  State<BestSellingcard> createState() => _BestSellingcardState();
}

class _BestSellingcardState extends State<BestSellingcard> {
  bool _isFavorited = false;
  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 147.h,
      width: 101.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
                blurRadius: 25,
                offset: Offset(0, 5),
                color: Color(0xff000000).withOpacity(.05))
          ]),
      child: Column(
        children: [
          Container(
            height: 86.h,
            width: 101.w,
            decoration: BoxDecoration(
              color: Color(0xffE9F1F4),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  topRight: Radius.circular(8.r)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: GestureDetector(
                      onTap: () => _toggleFavorite(),
                      child: Container(
                        height: 9.24.h,
                        width: 10.w,
                        child: Icon(
                          _isFavorited
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          size: 15,
                          color: _isFavorited == true
                              ? AppColors.colorStatusError
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60.h,
                  width: 60.w,
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 61.h,
            width: 101.w,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          'Running shoe',
                          style: TextStyle(
                              color: Color(0xff264653),
                              fontFamily: 'Sora',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          FittedBox(
                            child: Icon(
                              Icons.star,
                              color: Color(0xFFF4A100),
                              size: 12,
                            ),
                          ),
                          SizedBox(
                            width: 2.2.w,
                          ),
                          FittedBox(
                            child: Text(
                              '4.5 (257)',
                              style: TextStyle(
                                  color: Color(0xff264653),
                                  fontFamily: 'Sora',
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        child: Text(
                          '\$${widget.price}',
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Color(0xff2A9D8F),
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Container(
                        height: 16.h,
                        width: 16.w,
                        decoration: BoxDecoration(
                            color: Color(0xFF2A9D8F),
                            borderRadius: BorderRadius.circular(100)),
                        child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.shopping_cart,
                            size: 8.sp,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
