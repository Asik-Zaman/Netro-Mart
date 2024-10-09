import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/Provider/category_provider.dart';
import 'package:netro_mart_official/screens/home/categories_card.dart';
import 'package:provider/provider.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(builder: (context, value, child) {
      int index = 0;
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: value.categoryList == null || value.categoryList!.isEmpty
              ? Center(
                  child: Text('No category found!'),
                )
              : Row(
                  children: value.categoryList!.map((e) {
                    List<Color> itemColors = [
                      Color(0xFFE5F1FF),
                      Color(0xFFFFEAEA),
                      Color(0xFFC8FFF8),
                      Color(0xFFF2E5FF),
                      Color(0xFFC8FFF8),
                    ];

                    // Determine the color based on index
                    Color itemColor = itemColors[index % itemColors.length];
                    index++;
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: CategoriesCard(
                        title: e.categoryName!,
                        color: itemColor,
                        image: '${value.categoryBaseUrl}${e.categoryImage}',
                        textColor: const Color(0xFF117BFB),
                      ),
                    );
                  }).toList(),
                ),
        ),
      );
    });
  }
}

   // SizedBox(
              //   width: 12.w,
              // ),
              // CategoriesCard(
              //   title: 'Mens',
              //   color: Color(0xFFFFEAEA),
              //   image: 'assets/images/mens.png',
              //   textColor: Color(0xFFFF6767),
              // ),
              // SizedBox(
              //   width: 12.w,
              // ),
              // CategoriesCard(
              //   title: 'Women',
              //   color: Color(0xFFC8FFF8),
              //   image: 'assets/images/women.png',
              //   textColor: Color(0xFF2A9D8F),
              // ),
              // SizedBox(
              //   width: 12.w,
              // ),
              // CategoriesCard(
              //   title: 'Kids',
              //   color: Color(0xFFF2E5FF),
              //   image: 'assets/images/happy.png',
              //   textColor: Color(0xFF432C5A),
              // ),
              // SizedBox(
              //   width: 12.w,
              // ),
              // CategoriesCard(
              //   title: 'Young',
              //   color: Color(0xFFF2E5FF),
              //   image: 'assets/images/happy.png',
              //   textColor: Color(0xFF432C5A),
              // ),
              // SizedBox(
              //   width: 12.w,
              // ),
              // CategoriesCard(
              //   title: 'Women',
              //   color: Color(0xFFC8FFF8),
              //   image: 'assets/images/women.png',
              //   textColor: Color(0xFF2A9D8F),
              // ),
              // SizedBox(
              //   width: 12.w,
              // ),
              // CategoriesCard(
              //   title: 'Fashion',
              //   color: Color(0xFFE5F1FF),
              //   image: 'assets/images/fashion1.png',
              //   textColor: Color(0xFF117BFB),
              // ),
              // SizedBox(
              //   width: 12.w,
              // ),
              // CategoriesCard(
              //   title: 'Young',
              //   color: Color(0xFFF2E5FF),
              //   image: 'assets/images/happy.png',
              //   textColor: Color(0xFF432C5A),
              // ),
              // SizedBox(
              //   width: 12.w,
              // ),
              // CategoriesCard(
              //   title: 'Women',
              //   color: Color(0xFFC8FFF8),
              //   image: 'assets/images/women.png',
              //   textColor: Color(0xFF2A9D8F),
              // ),