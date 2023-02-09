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
  bool? valuefirst = false;
  final buttonColor = Color(0xff2A9D8F);

  final hintColor = Color(0xff6C6C6C);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 53.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.w),
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
                      "Payment",
                      style: TextStyle(
                          color: AppColors.descColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreditPayment()));
                    },
                    child: Container(
                      height: 59.h,
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
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 24.h,
                              width: 24.w,
                              child: Image.asset(
                                'assets/images/Credit card.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 11.w,
                            ),
                            Text(
                              'Credit/Debit Card',
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff264653),
                              ),
                            ),
                            SizedBox(
                              width: 33.w,
                            ),
                            Container(
                              height: 14.h,
                              width: 44.w,
                              child: Image.asset(
                                'assets/images/Visa.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Container(
                              height: 15.h,
                              width: 24.w,
                              child: Image.asset(
                                'assets/images/Mastercard.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 59.h,
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
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 24.h,
                            width: 24.w,
                            child: Image.asset(
                              'assets/images/paypal.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 11.w,
                          ),
                          Text(
                            'paypal',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff264653),
                            ),
                          ),
                          SizedBox(
                            width: 11.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 59.h,
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
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 24.h,
                            width: 24.w,
                            child: Image.asset(
                              'assets/images/google pay.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 11.w,
                          ),
                          Text(
                            'Google pay',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff264653),
                            ),
                          ),
                          SizedBox(
                            width: 11.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 59.h,
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
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 24.h,
                            width: 24.w,
                            child: Image.asset(
                              'assets/images/Money.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 11.w,
                          ),
                          Text(
                            'Cash on delivery',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff264653),
                            ),
                          ),
                          SizedBox(
                            width: 11.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250.h,
                  ),
                  MyButton(
                      textColor: AppColors.white,
                      color: AppColors.themeColor,
                      onPressed: () {
                        /*  Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Payment())); */
                      },
                      text: "Continue"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
