import 'package:flutter/material.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';

class TitleName extends StatelessWidget {
  const TitleName({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 16.responsiveWidth, vertical: 16.responsiveHeight),
      child: Text(
        title,
        style: AppTextStyles.semiBold.copyWith(
          color: AppColors.inactiveColor,
          fontSize: 14.responsiveFontSize,
        ),
      ),
    );
  }
}
