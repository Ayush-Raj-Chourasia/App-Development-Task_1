import 'package:flutter/material.dart';
import '../constants/app_constants.dart'; // Import the constants file

class CategoryItemWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItemWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppDimensions.mediumSpacing, vertical: AppDimensions.smallSpacing), // Adjusted padding slightly based on common patterns
        decoration: BoxDecoration(
          color: isSelected ? AppColors.selectedItemColor : Colors.transparent, // Use colors from constants
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius), // Use border radius from constants
          border: Border.all(
            color: isSelected ? AppColors.accentColor : AppColors.borderColor, // Use colors from constants
            width: AppDimensions.borderWidth, // Use border width from constants
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: isSelected ? AppColors.accentColor : AppColors.textColor), // Use colors from constants
            SizedBox(width: AppDimensions.smallSpacing), // Use spacing from constants
            Text(
              text,
              style: AppTextStyles.categoryItemText.copyWith(
                color: isSelected ? AppColors.accentColor : AppColors.textColor, // Use colors from constants
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal, // Use fontWeight from constants
              ),
            ),
          ],
        ),
      ),
    );
  }
} 