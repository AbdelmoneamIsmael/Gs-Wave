import 'package:flutter/material.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/utils/app_colors.dart';
import 'package:gtv/core/utils/test_style.dart';

class MultiSelectionWidget extends StatelessWidget {
  const MultiSelectionWidget({super.key, required this.items});
  final List<MultiSelectionItem> items;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: items);
  }
}

class MultiSelectionItem extends StatelessWidget {
  const MultiSelectionItem({
    super.key,
    required this.title,
    required this.isActive,
  });
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds:500),
      padding: EdgeInsets.symmetric(
          horizontal: 10.responsiveFontSize, vertical: 5.responsiveWidth),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.activeColor,
          width: .5,
        ),
        color:
            isActive ? AppColors.activeColor : AppColors.appbarBackgroundColor,
      ),
      child: Text(
        title,
        style: AppTextStyles.regular.copyWith(
          color: isActive ? AppColors.whiteColor : AppColors.inactiveColor,
          fontSize: 20.responsiveFontSize,
        ),
      ),
    );
  }
}
