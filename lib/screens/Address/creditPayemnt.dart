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
                  height: 203.h,
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
                                backgroundColor: AppColors.colorPrimaryLightest,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.r)),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w, right: 24.w, top: 40.h),
                                  child: Container(
                                    height: 318,
                                    width: 296,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 73,
                                          child: Image.asset(
                                            'assets/images/success.png',
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
                                            'You have successfully placed an order. We will call to verify the order. Do more than pay attention to the phone.',
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.colorTextLow,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 32.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 14.w),
                                          child: MyButton(
                                              textColor: AppColors.white,
                                              color: AppColors.themeColor,
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              text: "Back to home"),
                                        ),
                                      ],
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
