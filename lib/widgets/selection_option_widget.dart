import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/text_styles.dart';
import 'custom_image_view.dart';

class SelectionOptionWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectionOptionWidget({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.colorFFFFE8 : AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? AppColors.colorFF7030 : AppColors.colorFFC5C5,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: iconPath,
              height: 24,
              width: 24,
              color: isSelected ? AppColors.colorFF7030 : AppColors.colorFF6767,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: AppTextStyles.title16Medium.copyWith(
                color: isSelected ? AppColors.colorFF7030 : AppColors.colorFF2E2F,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 