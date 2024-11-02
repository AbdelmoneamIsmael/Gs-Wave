import 'package:flutter/material.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.enabeld,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.textAlign,
  });
  final TextEditingController? controller;
  final bool? enabeld;
  final String hintText;
  final Widget? suffixIcon, prefixIcon;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.responsiveHeight,
      child: TextFormField(
        enabled: enabeld,
        controller: controller,
        textAlign: textAlign ?? TextAlign.start,
        style: AppTextStyles.medium.copyWith(
          fontSize: 16.responsiveFontSize,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.activeColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 0.2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 0.2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          errorBorder: InputBorder.none,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          contentPadding:
              const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          fillColor: AppColors.appbarBackgroundColor,
          filled: true,
          hintText: hintText,
          hintStyle: AppTextStyles.medium.copyWith(
            color: Colors.grey,
            fontSize: 16.responsiveFontSize,
          ),
        ),
      ),
    );
  }
}
