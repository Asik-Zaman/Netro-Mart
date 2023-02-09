import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/screens/home/categories_card.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 16.w,
          ),
          CategoriesCard(
            title: 'Fashion',
            color: Color(0xFFE5F1FF),
            image: 'assets/images/fashion1.png',
            textColor: Color(0xFF117BFB),
          ),
          SizedBox(
            width: 12.w,
          ),
          CategoriesCard(
            title: 'Mens',
            color: Color(0xFFFFEAEA),
            image: 'assets/images/mens.png',
            textColor: Color(0xFFFF6767),
          ),
          SizedBox(
            width: 12.w,
          ),
          CategoriesCard(
            title: 'Women',
            color: Color(0xFFC8FFF8),
            image: 'assets/images/women.png',
            textColor: Color(0xFF2A9D8F),
          ),
          SizedBox(
            width: 12.w,
          ),
          CategoriesCard(
            title: 'Kids',
            color: Color(0xFFF2E5FF),
            image: 'assets/images/happy.png',
            textColor: Color(0xFF432C5A),
          ),
          SizedBox(
            width: 12.w,
          ),
          CategoriesCard(
            title: 'Young',
            color: Color(0xFFF2E5FF),
            image: 'assets/images/happy.png',
            textColor: Color(0xFF432C5A),
          ),
          SizedBox(
            width: 12.w,
          ),
          CategoriesCard(
            title: 'Women',
            color: Color(0xFFC8FFF8),
            image: 'assets/images/women.png',
            textColor: Color(0xFF2A9D8F),
          ),
          SizedBox(
            width: 12.w,
          ),
          CategoriesCard(
            title: 'Fashion',
            color: Color(0xFFE5F1FF),
            image: 'assets/images/fashion1.png',
            textColor: Color(0xFF117BFB),
          ),
          SizedBox(
            width: 12.w,
          ),
          CategoriesCard(
            title: 'Young',
            color: Color(0xFFF2E5FF),
            image: 'assets/images/happy.png',
            textColor: Color(0xFF432C5A),
          ),
          SizedBox(
            width: 12.w,
          ),
          CategoriesCard(
            title: 'Women',
            color: Color(0xFFC8FFF8),
            image: 'assets/images/women.png',
            textColor: Color(0xFF2A9D8F),
          ),
          SizedBox(
            width: 16.w,
          ),
        ],
      ),
    );
  }
}
