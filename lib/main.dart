import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtv/core/routes/app_pages.dart';
import 'package:gtv/core/routes/app_routes.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';
import 'package:gtv/features/home_page/presentation/pages/home_screen.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.contacts.request();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.activeColor,
          backgroundColor: AppColors.backgroundColor,
          unselectedItemColor: AppColors.inactiveColor,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: AppTextStyles.regular,
          unselectedLabelStyle: AppTextStyles.regular,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}
