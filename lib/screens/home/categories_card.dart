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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child:
                    SizedBox(height: 28, width: 28, child: Image.network(image)),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            FittedBox(
              child: Text(
                title,
                style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
/**/