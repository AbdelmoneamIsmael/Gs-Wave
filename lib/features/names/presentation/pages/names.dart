import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/routes/app_routes.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';
import 'package:gtv/core/widgets/app_textfield.dart';
import 'package:gtv/core/widgets/custom_appbar.dart';
import 'package:gtv/core/widgets/multi_selection.dart';
import 'package:gtv/core/widgets/name_widget.dart';
import 'package:gtv/features/home_page/presentation/controller/home_controller.dart';
import 'package:gtv/features/names/presentation/controller/name_controller.dart';
import 'package:gtv/features/names/presentation/widgets/title_name.dart';
import 'package:permission_handler/permission_handler.dart';

class NamesScreen extends GetView<NameController> {
  const NamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              action: IconButton(
                onPressed: () {
                  Get.find<HomeController>()
                      .goToNamedWithNavigatedRoute(Routes.addNewName);
                },
                icon: const Icon(Icons.add, color: AppColors.activeColor),
              ),
              center: const MultiSelectionWidget(
                items: [
                  MultiSelectionItem(title: "الكل", isActive: false),
                  MultiSelectionItem(title: "SIP", isActive: false),
                  MultiSelectionItem(title: "LDAP", isActive: true),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 16.responsiveWidth, vertical: 8.responsiveHeight),
              child: const AppTextField(
                enabeld: false,
                hintText: ' ⌕ بحث',
                textAlign: TextAlign.center,
              ),
            ),
            GetBuilder<NameController>(
              builder: (controller) {
                return FutureBuilder(
                    future: Permission.contacts.isGranted,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (snapshot.data == true) {
                        return controller.contacts.isNotEmpty
                            ? Expanded(
                                child: AzListView(
                                    indexBarMargin:
                                        EdgeInsets.all(12.responsiveWidth),
                                    indexBarItemHeight: 20.responsiveHeight,
                                    indexBarOptions: IndexBarOptions(
                                      textStyle:
                                          AppTextStyles.semiBold.copyWith(
                                        color: AppColors.blackColor,
                                        fontSize: 14.responsiveFontSize,
                                      ),
                                    ),
                                    physics: const BouncingScrollPhysics(),
                                    data: controller.contacts,
                                    itemCount: controller.contacts.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          index == 0
                                              ? TitleName(
                                                  title: controller
                                                      .contacts[index]
                                                      .displayName
                                                      .toString()
                                                      .substring(0, 1)
                                                      .toUpperCase())
                                              : (controller
                                                          .contacts[index]
                                                          .displayName
                                                          .isNotEmpty &&
                                                      controller.contacts[index]
                                                              .displayName[0]
                                                              .toUpperCase() !=
                                                          controller
                                                              .contacts[
                                                                  index - 1]
                                                              .displayName[0]
                                                              .toUpperCase())
                                                  ? TitleName(
                                                      title: controller
                                                          .contacts[index]
                                                          .displayName
                                                          .toString()
                                                          .substring(0, 1)
                                                          .toUpperCase())
                                                  : Container(),
                                          NameWidget(
                                            name: controller
                                                .contacts[index].displayName
                                                .toString(),
                                          ),
                                        ],
                                      );
                                    }),
                              )
                            : Text(
                                'لا يوجد اتصالات',
                                style: AppTextStyles.regular.copyWith(
                                    color: AppColors.inactiveColor,
                                    fontSize: 20.responsiveFontSize),
                              );
                      } else {
                        return TextButton(
                          onPressed: () {
                            controller.requestPermission();
                          },
                          child: Text(
                            'انت لم تقم بتفعيل الائذن الاتصال تعيل الان ',
                            style: AppTextStyles.medium
                                .copyWith(color: AppColors.activeColor),
                          ),
                        );
                      }
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
