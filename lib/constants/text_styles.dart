import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  // Headline Styles
  static TextStyle headline32BoldManrope = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    fontFamily: 'Manrope',
    color: AppColors.colorFF2E2F,
  );

  // Title Styles
  static TextStyle title20RegularManrope = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: 'Manrope',
    color: Color(0xFF000000),
  );

  static TextStyle title20Medium = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.colorFF2E2F,
  );

  static TextStyle title16Medium = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle title16BoldManrope = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: 'Manrope',
    color: AppColors.whiteCustom,
  );

  // Body Styles
  static TextStyle body14Medium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.colorFF7030,
  );
} 