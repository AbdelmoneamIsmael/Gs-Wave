import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/routes/app_routes.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';
import 'package:gtv/core/widgets/app_textfield.dart';
import 'package:gtv/core/widgets/custom_appbar.dart';
import 'package:gtv/features/home_page/presentation/controller/home_controller.dart';
import 'package:gtv/features/names/presentation/controller/name_controller.dart';

class AddNewName extends StatelessWidget {
  const AddNewName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.activeColor,
                  ),
                  onPressed: () =>
                      Get.find<HomeController>().goToNamedWithNavigatedRoute(
                    Routes.namesPage,
                  ),
                ),
                center: Text(
                  "إسم جديد",
                  style: AppTextStyles.medium.copyWith(
                    fontSize: 18.responsiveFontSize,
                  ),
                ),
                action: IconButton(
                  icon: const Icon(
                    Icons.check,
                    color: AppColors.activeColor,
                  ),
                  onPressed: () =>
                      Get.find<HomeController>().goToNamedWithNavigatedRoute(
                    Routes.namesPage,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Color(0xffECECEC),
                            child: FaIcon(
                              FontAwesomeIcons.circleUser,
                              size: 80,
                              color: Color(0xffCACACA),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              children: [
                                AppTextField(hintText: "الاسم الشخصي"),
                                SizedBox(height: 8),
                                AppTextField(hintText: "الاسم العائلي"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.responsiveHeight),
                      const CustomDevider(
                        deviderName: "SIP رقم",
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.responsiveWidth),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "SIP رقم",
                              style: AppTextStyles.regular.copyWith(
                                fontSize: 20.responsiveFontSize,
                              ),
                            ),
                            SizedBox(width: 16.responsiveWidth),
                            const Expanded(
                                child: AppTextField(hintText: "SIP رقم")),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 20,
                        thickness: .5,
                      ),
                      Row(
                        children: [
                          Text(
                            "اضافة عنصر جديد",
                            style: AppTextStyles.regular.copyWith(
                              fontSize: 20.responsiveFontSize,
                            ),
                          ),
                          SizedBox(width: 16.responsiveWidth),
                          IconButton(
                            icon: const Icon(
                              Icons.add_circle_outline_outlined,
                              color: AppColors.greenColor,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20,
                        thickness: .5,
                      ),
                      const CustomDevider(deviderName: "هاتف "),
                      const Row(
                        children: [
                          Expanded(
                            child: AppTextField(
                              hintText: "الجوال",
                              suffixIcon: Icon(Icons.arrow_forward_ios,
                                  color: AppColors.inactiveColor),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                              flex: 2,
                              child: AppTextField(
                                hintText: "رقم الهاتف",
                              )),
                        ],
                      ),
                      const Divider(
                        height: 20,
                        thickness: .5,
                      ),
                      Row(
                        children: [
                          Text(
                            "اضافة عنصر جديد",
                            style: AppTextStyles.regular.copyWith(
                              fontSize: 20.responsiveFontSize,
                            ),
                          ),
                          SizedBox(width: 16.responsiveWidth),
                          IconButton(
                            icon: const Icon(
                              Icons.add_circle_outline_outlined,
                              color: AppColors.greenColor,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const Divider(
                        height: 20,
                        thickness: .5,
                      ),
                      const CustomDevider(deviderName: "المجموعات"),
                      const AppTextField(
                        hintText: "اختيار المجموعة",
                        textAlign: TextAlign.center,
                        suffixIcon: Icon(Icons.arrow_forward_ios,
                            color: AppColors.inactiveColor),
                      ),
                      const CustomDevider(deviderName: "الرنة"),
                      Row(children: [
                        const Expanded(
                            child: AppTextField(
                          hintText: "اختيار الرنة",
                          textAlign: TextAlign.center,
                        )),
                        SizedBox(width: 16.responsiveWidth),
                        SizedBox(
                          height: 40.responsiveHeight,
                          child: MaterialButton(
                            onPressed: () {},
                            color: AppColors.inactiveColor,
                            child: Text(
                              " مسح الرنة",
                              style: AppTextStyles.medium.copyWith(
                                fontSize: 18.responsiveFontSize,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDevider extends StatelessWidget {
  const CustomDevider({
    super.key,
    required this.deviderName,
  });
  final String deviderName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 3),
      margin: EdgeInsets.symmetric(vertical: 8.responsiveHeight),
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.activeColor,
          ),
        ),
      ),
      child: Text(
        deviderName,
        style: AppTextStyles.regular.copyWith(
            color: AppColors.activeColor, fontSize: 20.responsiveFontSize),
      ),
    );
  }
}
