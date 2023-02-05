import 'package:flutter/material.dart';

Widget buildIndicator(bool isSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 1),
    child: Container(
      height: isSelected ? 12 : 8,
      width: isSelected ? 12 : 8,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Color(0xFF2A9D8F) : Color(0xFFDBDBDB)),
    ),
  );
}
