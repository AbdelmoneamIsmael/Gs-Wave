import 'package:flutter/material.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({
    super.key,
    required this.title,
    this.onTap,
    this.textColor,
    this.trailingWidget,
  });
  final String title;
  final void Function()? onTap;
  final Color? textColor;
  final Widget? trailingWidget;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
          horizontal: 16.responsiveWidth, vertical: 8.responsiveHeight),
      onTap: onTap,
      tileColor: AppColors.whiteColor,
      title: Text(
        title,
        style: AppTextStyles.medium.copyWith(
          color: textColor ?? AppColors.blackColor,
          fontSize: 18.responsiveFontSize,
        ),
      ),
      trailing: trailingWidget ?? const Icon(Icons.arrow_forward_ios_outlined),
    );
  }
}
