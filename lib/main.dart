import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_mart_official/Provider/timer_Provider.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/screens/splace/splace_screen.dart';
import 'package:netro_mart_official/widgets/custom_swatch.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context) => TimerProvider()),
        child: Builder(builder: ((context) {
          return ScreenUtilInit(
              designSize: Size(360, 800),
              builder: (context, child) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    primarySwatch: createMaterialColor(AppColors.themeColor),
                    fontFamily: 'Sora',
                  ),
                  home: SplashScreen(),
                );
              });
        })));
  }
}

/*MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: createMaterialColor(AppColors.themeColor),
                fontFamily: 'Sora',
              ),
              home: SplashScreen(),
            ), */