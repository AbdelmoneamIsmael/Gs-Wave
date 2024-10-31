import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gtv/core/generator/icons/icons.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';
import 'package:gtv/core/widgets/custom_appbar.dart';
import 'package:gtv/core/widgets/multi_selection.dart';
import 'package:gtv/core/widgets/name_widget.dart';
import 'package:gtv/features/dial_page/presentation/controller/dial_controller.dart';
import 'package:onscreen_num_keyboard/onscreen_num_keyboard.dart';

class DialScreen extends GetView<DialController> {
  const DialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              leading: SvgPicture.asset(
                IconsAssets.swapPerson,
                width: 25.responsiveWidth,
                colorFilter: const ColorFilter.mode(
                  AppColors.activeColor,
                  BlendMode.srcIn,
                ),
              ),
              center: const MultiSelectionWidget(
                items: [
                  MultiSelectionItem(title: "الكل", isActive: true),
                  MultiSelectionItem(title: "فائتة", isActive: false),
                ],
              ),
            ),
            Expanded(
              child: Column(children: [
                Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        
                        return const NameWidget(name: "name");
                      }),
                ),
                GetBuilder<DialController>(builder: (controller) {
                  return Container(
                    color: AppColors.backgroundColor,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: TextFormField(
                            keyboardType: TextInputType.none,
                            textAlign: TextAlign.left,
                            controller: controller.dialController,
                            style: AppTextStyles.semiBold.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 20.responsiveFontSize,
                            ),
                            decoration: InputDecoration(
                              hintText: "ادخل رقم الهاتف",
                              hintStyle: AppTextStyles.semiBold.copyWith(
                                color: AppColors.inactiveColor,
                                fontSize: 20.responsiveFontSize,
                              ),
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.subString();
                                  },
                                  icon: const Icon(
                                    Icons.backspace_outlined,
                                  )),
                            ),
                          ),
                        ),
                        NumericKeyboard(
                          leftIcon: Text(
                            "*",
                            style: AppTextStyles.semiBold.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 25.responsiveFontSize,
                            ),
                          ),
                          rightIcon: Text(
                            "#",
                            style: AppTextStyles.semiBold.copyWith(
                              color: AppColors.blackColor,
                              fontSize: 25.responsiveFontSize,
                            ),
                          ),
                          leftButtonFn: () =>
                              controller.dialController.text += '*',
                          onKeyboardTap: (value) {
                            controller.dialController.text += value;
                          },
                          rightButtonFn: () =>
                              controller.dialController.text += '#',
                          textStyle: AppTextStyles.semiBold.copyWith(
                            color: AppColors.blackColor,
                            fontSize: 20.responsiveFontSize,
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ]),
            )
          ],
        ),
      ),
    );
  }
}
