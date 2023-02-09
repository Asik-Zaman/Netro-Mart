import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesCard extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final Color textColor;

  const CategoriesCard(
      {super.key,
      required this.title,
      required this.textColor,
      required this.color,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: FittedBox(child: Image.asset(image)),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              height: 16,
              width: 72,
              child: FittedBox(
                child: Text(
                  title,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
/**/