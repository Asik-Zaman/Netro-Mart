import 'package:flutter/material.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
      body: Center(
        child: Text('Chat'),
      ),
    );
  }
}
