import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gtv/core/generator/icons/icons.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/routes/app_routes.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/features/home_page/presentation/controller/home_controller.dart';

class ApplicationHomeScreen extends GetView<HomeController> {
  const ApplicationHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex,
          onTap: controller.onBottomNavigationBarItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                colorFilter: ColorFilter.mode(
                    controller.currentIndex == 0
                        ? AppColors.activeColor
                        : AppColors.inactiveColor,
                    BlendMode.srcIn),
                IconsAssets.namesBar,
                height: 25.responsiveWidth,
              ),
              label: 'الاسماء',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                colorFilter: ColorFilter.mode(
                    controller.currentIndex == 1
                        ? AppColors.activeColor
                        : AppColors.inactiveColor,
                    BlendMode.srcIn),
                IconsAssets.conferenceBar,
                height: 25.responsiveWidth,
              ),
              label: 'مؤتمر',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                colorFilter: ColorFilter.mode(
                    controller.currentIndex == 2
                        ? AppColors.activeColor
                        : AppColors.inactiveColor,
                    BlendMode.srcIn),
                IconsAssets.dialPad,
                height: 25.responsiveWidth,
              ),
              label: 'لوحة المفاتيح',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                colorFilter: ColorFilter.mode(
                    controller.currentIndex == 3
                        ? AppColors.activeColor
                        : AppColors.inactiveColor,
                    BlendMode.srcIn),
                IconsAssets.messageBar,
                height: 25.responsiveWidth,
              ),
              label: 'رسائل',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                colorFilter: ColorFilter.mode(
                    controller.currentIndex == 4
                        ? AppColors.activeColor
                        : AppColors.inactiveColor,
                    BlendMode.srcIn),
                IconsAssets.settingBar,
                height: 25.responsiveWidth,
              ),
              label: 'اعدادات',
            ),
          ],
        ),
        body: Navigator(
          onGenerateRoute: controller.onGenerateRoute,
          initialRoute: Routes.namesPage,
          key: Get.nestedKey(1),
        ),
      ),
    );
  }
}
