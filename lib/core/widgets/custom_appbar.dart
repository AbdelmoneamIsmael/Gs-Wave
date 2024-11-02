import 'package:flutter/material.dart';
import 'package:gtv/core/helper/responsive_helper.dart';
import 'package:gtv/core/utils/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.center,
      this.leading,
      this.action,
      this.bagroundColor});
  final Widget center;
  final Widget? leading, action;
  final Color? bagroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.responsiveHeight,
      decoration: BoxDecoration(
          color: bagroundColor ?? AppColors.appbarBackgroundColor,
          border: const Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          )
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey,
          //     blurRadius: 2,
          //     offset: Offset(0, 2),
          //   ),
          // ],
          ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.responsiveWidth),
        child: Row(
          children: [
            if (leading != null)
              leading!
            else
              SizedBox(
                width: 20.responsiveWidth,
              ),
            Expanded(
              child: Center(
                child: center,
              ),
            ),
            if (action != null) action!,
          ],
        ),
      ),
    );
  }
}
