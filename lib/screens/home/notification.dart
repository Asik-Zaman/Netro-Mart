import 'package:flutter/material.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
      body: Center(
        child: Text('Notification'),
      ),
    );
  }
}
