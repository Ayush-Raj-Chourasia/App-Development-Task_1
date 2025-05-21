import 'package:flutter/material.dart';

class AppColors {
  // Updated with actual color values from Figma task images
  static const Color primaryColor = Color(0xFF5D4037); // Dark Brown for buttons and potentially other elements
  static const Color accentColor = Color(0xFFE6A774); // Warm Orange/Brown for selected items and step indicator
  static const Color textColor = Color(0xFF333333); // Dark Grey for titles and unselected text
  static const Color hintColor = Color(0xFF9E9E9E); // Grey Hint Text
  static const Color borderColor = Color(0xFFBDBDBD); // Light Grey for unselected borders and unfilled step indicator
  static const Color selectedItemColor = Color(0xFFF8E8D8); // Light Orange/Beige background for selected item
  static const Color backgroundColor = Color(0xFFF5F5DC); // Light Beige background for the screen
}

class AppTextStyles {
  // Updated with actual text styles from Figma task images
  static const TextStyle appBarTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500, // Medium weight
    color: AppColors.textColor,
  );

  static const TextStyle screenTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static const TextStyle stepIndicator = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.accentColor,
  );

   static const TextStyle sectionTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
    color: AppColors.textColor,
  );

  static const TextStyle categoryItemText = TextStyle(
    fontSize: 14.0,
    // color and fontWeight will be handled in the widget based on selection
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

class AppDimensions {
  // Updated with actual spacing and dimension values from Figma task images
  static const double screenPadding = 16.0;
  static const double largeSpacing = 24.0;
  static const double mediumSpacing = 16.0;
  static const double smallSpacing = 8.0;
  static const double buttonHeight = 50.0;
  static const double borderRadius = 8.0;
  static const double borderWidth = 1.0; // Slightly thinner border
}