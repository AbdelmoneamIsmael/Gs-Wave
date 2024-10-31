import 'package:flutter/material.dart';
import 'package:gtv/core/const/app_const.dart';
import 'package:gtv/core/utils/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const light = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w300,
  );

  static const regular = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w400,
  );

  static const medium = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w500,
  );

  static const semiBold = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w600,
  );

  static const bold = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w700,
  );

  static const black = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w900,
  );
}
