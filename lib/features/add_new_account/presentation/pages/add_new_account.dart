import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/routes/app_routes.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';
import 'package:gtv/core/widgets/custom_appbar.dart';
import 'package:gtv/core/widgets/setting_widget.dart';
import 'package:gtv/features/home_page/presentation/controller/home_controller.dart';

class AddNewAccount extends StatelessWidget {
  const AddNewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          CustomAppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.activeColor,
              ),
              onPressed: () =>
                  Get.find<HomeController>().goToNamedWithNavigatedRoute(
                Routes.settingsPage,
              ),
            ),
            center: Text(
              "اضافة حساب جديد",
              style: AppTextStyles.medium
                  .copyWith(fontSize: 18.responsiveFontSize),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "حسابات عامة",
                style: AppTextStyles.medium.copyWith(
                    fontSize: 18.responsiveFontSize,
                    color: AppColors.activeColor),
              ),
            ],
          ),
          const SettingWidget(title: "(QR مسح الرمز  ) UCM  حساب "),
          const SettingWidget(title: "(QR تحديد صورة الرمز  ) UCM  حساب "),
          const SettingWidget(title: "Sip حساب "),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "VOIP مزود الاتصالات عبر بروتوكول الانترنت",
                style: AppTextStyles.medium.copyWith(
                    fontSize: 18.responsiveFontSize,
                    color: AppColors.activeColor),
              ),
            ],
          ),
          const SettingWidget(
            title: "تحميل ......",
            trailingWidget: SizedBox(),
          ),
        ]),
      ),
    );
  }
}
