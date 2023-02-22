import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/Address/creditPayemnt.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int _selectedContainerIndex = 0;
  int selectedCategoryIndex = 0;
  bool? valuefirst = false;
  final buttonColor = Color(0xff2A9D8F);

  final hintColor = Color(0xff6C6C6C);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.colorTextWhiteHigh,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios,
                    size: 18.sp, color: AppColors.descColor)),
            SizedBox(width: 13.w),
            Text(
              "Payment",
              style: TextStyle(
                  color: AppColors.descColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 56.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                //Stepper code
                Container(
                  height: 45.h,
                  width: 328.w,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 3.h,
                            width: 26.w,
                            color: Color(0xff2A9D8F),
                          ),
                          Container(
                            height: 16.h,
                            width: 16.h,
                            decoration: BoxDecoration(
                                color: Color(0xff2A9D8F),
                                borderRadius: BorderRadius.circular(60.r)),
                          ),
                          Container(
                            height: 3.h,
                            width: 70.w,
                            color: Color(0xff2A9D8F),
                          ),
                          Container(
                            height: 16.h,
                            width: 16.h,
                            decoration: BoxDecoration(
                                color: Color(0xff2A9D8F),
                                borderRadius: BorderRadius.circular(60.r)),
                          ),
                          Container(
                            height: 3.h,
                            width: 70.w,
                            color: Color(0xff2A9D8F),
                          ),
                          Container(
                            height: 16.h,
                            width: 16.h,
                            decoration: BoxDecoration(
                                color: Color(0xff2A9D8F),
                                borderRadius: BorderRadius.circular(60.r)),
                          ),
                          Container(
                            height: 3.h,
                            width: 70.w,
                            color: Color(0xff919191),
                          ),
                          Container(
                            height: 16.h,
                            width: 16.h,
                            decoration: BoxDecoration(
                                color: Color(0xff919191),
                                borderRadius: BorderRadius.circular(60.r)),
                          ),
                          Container(
                            height: 3.h,
                            width: 26.w,
                            color: Color(0xff919191),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Address'),
                          Text('Delivery'),
                          Text('Payment'),
                          Text('Confirm'),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int x = 0; x < 4; x++) ...[
                      buildCard(
                          x == 0
                              ? 'assets/images/Credit card.png'
                              : x == 1
                                  ? 'assets/images/paypal.png'
                                  : x == 2
                                      ? 'assets/images/google pay.png'
                                      : 'assets/images/Money.png',
                          x == 0
                              ? 'Credit/Debit Card'
                              : x == 1
                                  ? 'paypal'
                                  : x == 2
                                      ? 'Google pay'
                                      : 'Cash on delivery',
                          x == 0
                              ? 'assets/images/Visa.png'
                              : x == 1
                                  ? 'assets/images/Visa.png'
                                  : x == 2
                                      ? 'assets/images/Visa.png'
                                      : 'assets/images/Visa.png',
                          x == 0
                              ? 'assets/images/Mastercard.png'
                              : x == 1
                                  ? 'assets/images/Mastercard.png'
                                  : x == 2
                                      ? 'assets/images/Mastercard.png'
                                      : 'assets/images/Mastercard.png',
                          x),
                      SizedBox(
                        height: 8.h,
                      ),
                    ],
                    SizedBox(
                      height: 243.h,
                    ),
                    MyButton(
                        textColor: AppColors.white,
                        color: AppColors.themeColor,
                        onPressed: () {
                          _selectedContainerIndex == 0
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CreditPayment()))
                              : Container();
                        },
                        text: "Continue"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(
      String icon, String title, String icon2, String icon3, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Container(
        height: 59.h,
        width: 328.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: selectedCategoryIndex == index
                ? AppColors.colorPrimaryLightest
                : AppColors.colorTextWhiteHigh,
            border: Border.all(
              color: selectedCategoryIndex == index
                  ? AppColors.colorPrimaryMain
                  : AppColors.white,
              width: 1.2,
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 25,
                  offset: Offset(0, 5),
                  color: Color(0xff000000).withOpacity(.05))
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 24.h,
                    width: 24.w,
                    child: Image.asset(
                      icon,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Container(
                    height: 16.h,
                    width: 111.w,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: selectedCategoryIndex == index
                            ? AppColors.colorPrimaryMain
                            : AppColors.colorSecondaryMain,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 33.w,
              ),
              Container(
                height: 14.h,
                width: 44.w,
                child: index == 0
                    ? Image.asset(
                        icon2,
                        fit: BoxFit.contain,
                      )
                    : Container(
                        height: 14.h,
                        width: 44.w,
                      ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Container(
                height: 15.h,
                width: 24.w,
                child: index == 0
                    ? Image.asset(
                        icon3,
                        fit: BoxFit.contain,
                      )
                    : Container(
                        height: 15.h,
                        width: 24.w,
                      ),
              ),
              Expanded(
                child: Radio(
                  value: index,
                  groupValue: _selectedContainerIndex,
                  onChanged: (value) {
                    setState(() {
                      _selectedContainerIndex = value!;
                      selectedCategoryIndex = index;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
