import 'package:docdoc/core/routing/ongenerate_routes.dart';
import 'package:docdoc/core/utils/app_colors.dart';
import 'package:docdoc/features/splash/presentaion/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          onGenerateRoute: onGenerateRoutes,
          initialRoute: SplashView.routeName,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            fontFamily: 'Inter',
            scaffoldBackgroundColor: AppColors.backgroundColor,
          ),
        );
      },
    );
  }
}
