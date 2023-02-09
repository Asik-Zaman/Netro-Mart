import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/widgets/my_button.dart';

class CreditPayment extends StatefulWidget {
  const CreditPayment({super.key});

  @override
  State<CreditPayment> createState() => _CreditPaymentState();
}

class _CreditPaymentState extends State<CreditPayment> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 16.h,
                        width: 230.w,
                        child: Text(
                          'Add a new card',
                          style: TextStyle(
                              color: AppColors.colorSecondaryMain,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Container(
                        height: 15.h,
                        width: 24.w,
                        child: Image.asset(
                          'assets/images/Visa.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: 15.h,
                        width: 46.w,
                        child: Image.asset(
                          'assets/images/Mastercard.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  NewText('Card Number'),
                  SizedBox(
                    height: 8.h,
                  ),
                  NewForm('Enter card number'),
                  SizedBox(
                    height: 12.h,
                  ),
                  NewText('Card Holder Name'),
                  SizedBox(
                    height: 8.h,
                  ),
                  NewForm('Enter card holder name'),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NewText('Expiration'),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            height: 40.h,
                            width: 142.w,
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
                                  hintText: 'Enter expiration',
                                  hintStyle: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Sora',
                                      color: Color(0xff6C6C6C))),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NewText('CVV'),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            height: 40.h,
                            width: 142.w,
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
                                  hintText: 'Enter CVV',
                                  hintStyle: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff6C6C6C))),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: buttonColor,
                        value: valuefirst,
                        onChanged: (value) {
                          valuefirst = value;
                          setState(() {});
                        },
                      ),
                      Text(
                        "Save this address for future",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: hintColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 200.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: MyButton(
                    textColor: AppColors.white,
                    color: AppColors.themeColor,
                    onPressed: () {
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
                                              onTap: (() =>
                                                  Navigator.pop(context)),
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
                                                      BorderRadius.circular(
                                                          8.r),
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
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Free Delivery',
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            color: Color(
                                                                0xff264653),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      Text(
                                                        '5-10 Day Delivery',
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            color: Color(
                                                                0xff919191),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 26.h,
                                                    width: 69.w,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffF7F7F7),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r)),
                                                    child: Center(
                                                        child: Text(
                                                      '\$0.00',
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color:
                                                              Color(0xff264653),
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
                                                      BorderRadius.circular(
                                                          8.r),
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
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Standard Delivery',
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      Text(
                                                        '3-5 Day Delivery',
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 26.h,
                                                    width: 69.w,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffF7F7F7),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r)),
                                                    child: Center(
                                                        child: Text(
                                                      '\$4.99',
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color:
                                                              Color(0xff264653),
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
                                                      BorderRadius.circular(
                                                          8.r),
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
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                // crossAxisAlignment: CrossAxisAlignment.stretch,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Express Delivery',
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            color: Color(
                                                                0xff264653),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      Text(
                                                        '1-2 Day Delivery',
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            color: Color(
                                                                0xff919191),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 26.h,
                                                    width: 69.w,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xffF7F7F7),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.r)),
                                                    child: Center(
                                                        child: Text(
                                                      '\$0.00',
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          color: AppColors
                                                              .colorPrimaryMain,
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
                    text: "Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget NewText(String title) {
    return Container(
      child: Text(title,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: Color(0xff264653),
          )),
    );
  }

  Widget NewForm(String hint) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Color(0xff2A9D8F), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Color(0xffE9F1F4), width: 1),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          hintText: hint,
          hintStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Sora',
              color: Color(0xff6C6C6C))),
    );
  }
}
