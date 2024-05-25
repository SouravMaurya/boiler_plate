import 'package:boiler_plate/app/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextStyle {
  static TextStyle getRegularText({
    Color? textColor,
    double? textSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        color: textColor ?? ColorConstants.blackColor,
        fontSize: textSize ?? 14.h,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  static TextStyle? getMediumText({
    Color? textColor,
    double? textSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        color: textColor ?? ColorConstants.blackColor,
        fontSize: textSize ?? 14.h,
        fontWeight: fontWeight ?? FontWeight.w500);
  }

  static TextStyle getBoldText({
    Color? textColor,
    double? textSize,
    FontWeight? fontWeight,
  }) {
    return TextStyle(
        color: textColor ?? ColorConstants.blackColor,
        fontSize: textSize ?? 14.h,
        fontWeight: fontWeight ?? FontWeight.w600);
  }
}
