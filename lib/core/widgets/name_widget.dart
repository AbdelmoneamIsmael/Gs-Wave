import 'package:flutter/material.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key, required this.name});

  final String name;

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
      padding: EdgeInsets.symmetric(
          horizontal: 16.responsiveWidth, vertical: 16.responsiveHeight),
      child: Text(
        name,
        style: AppTextStyles.semiBold.copyWith(
          color: AppColors.blackColor,
          fontSize: 20.responsiveFontSize,
        ),
      ),
    );
  }
}
