import 'package:flutter/material.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key, required this.name, this.number});

  final String name;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            )),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.responsiveWidth,
          ),
          dense: true,
          visualDensity: const VisualDensity(horizontal: 01, vertical: -4),
          title: Text(
            name.isEmpty ? "غير معروف" : name,
            style: AppTextStyles.semiBold.copyWith(
              color:
                  name.isEmpty ? AppColors.inactiveColor : AppColors.blackColor,
              fontSize: 20.responsiveFontSize,
            ),
          ),
          subtitle: Text(
            number ?? "",
            style: AppTextStyles.regular.copyWith(
              color: AppColors.inactiveColor,
              fontSize: 14.responsiveFontSize,
            ),
          ),
          // trailing: const Icon(
          //   Icons.arrow_forward_ios,
          //   color: AppColors.inactiveColor,
          // ),
        ));
  }
}
