import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/routes/app_routes.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';
import 'package:gtv/core/widgets/custom_appbar.dart';
import 'package:gtv/core/widgets/setting_widget.dart';
import 'package:gtv/features/home_page/presentation/controller/home_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                center: Text(
                  "إعدادات",
                  style: AppTextStyles.medium.copyWith(
                    fontSize: 18.responsiveFontSize,
                  ),
                ),
              ),
              SettingWidget(
                onTap: () {
                  Get.find<HomeController>().goToNamedWithNavigatedRoute(
                    Routes.addNewAccount,
                  );
                },
                title: "ضبط الحساب",
              ),
              const SettingWidget(
                title: "اعدادات متقدمة",
              ),
              const SettingWidget(
                title: "Profisoning Settings",
              ),
              const SettingWidget(
                title: "تشخيص الضبط ",
              ),
              const SettingWidget(
                title: "حول الجهاز ",
              ),
              const SettingWidget(
                title: "تسجيل ",
              ),
              const SettingWidget(
                title: "تصحيح الاخطاء ",
              ),
              const SettingWidget(
                textColor: AppColors.redColor,
                trailingWidget: SizedBox(),
                title: "مسح كل سجل المكالمات",
              ),
              const SettingWidget(
                trailingWidget: SizedBox(),
                title: "خروج",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
