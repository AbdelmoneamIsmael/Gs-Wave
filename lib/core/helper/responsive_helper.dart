import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

extension ResponsiveHelper on num {
  /// responsive height
  double get responsiveHeight => Get.context!.height * this / 852;

  /// responsive width
  double get responsiveWidth => Get.context!.width * this / 393;

  /// responsive font size
  double get responsiveFontSize => this * Get.context!.width / 393;

  /// vertical Responsive space
  SizedBox get verticalSpace => SizedBox(height: responsiveHeight);

  /// horizontal Responsive space
  SizedBox get horizontalSpace => SizedBox(width: responsiveWidth);
}
