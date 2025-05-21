import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/text_styles.dart';
import '../constants/image_constants.dart';
import '../widgets/custom_image_view.dart';

class WriteReviewStep2Screen extends StatelessWidget {
  const WriteReviewStep2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteCustom,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTitle(),
                      _buildProgressIndicator(),
                      _buildInstruction(),
                      _buildTitleInput(),
                      _buildDescriptionInput(),
                      const SizedBox(height: 94), // Space for bottom button
                    ],
                  ),
                ),
              ),
            ),
            _buildBottomButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 28, right: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowleftline,
              height: 24,
              width: 24,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Padding(
      padding: EdgeInsets.only(top: 16),
      child: Text(
        'Write your reviews',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          fontFamily: 'Manrope',
          color: AppColors.colorFF2E2F,
          height: 1.375,
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Step 2 / 2', style: AppTextStyles.body14Medium),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                height: 3,
                width: 175,
                decoration: const BoxDecoration(color: AppColors.colorFF7030),
              ),
              Container(
                height: 3,
                width: 175,
                decoration: const BoxDecoration(color: AppColors.colorFF7030),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInstruction() {
    return const Padding(
      padding: EdgeInsets.only(top: 32),
      child: Text(
        'Give info about the issue you\'re facing',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.colorFF2E2F,
          height: 1.4,
        ),
      ),
    );
  }

  Widget _buildTitleInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Short title',
            style: AppTextStyles.title16Medium.copyWith(
              color: AppColors.colorFF6767,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.colorFFC5C5,
                width: 1,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Eg. No one is giving Luxor pens',
                hintStyle: TextStyle(
                  color: AppColors.colorFF6767,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: AppTextStyles.title16Medium.copyWith(
              color: AppColors.colorFF6767,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.colorFFC5C5,
                width: 1,
              ),
            ),
            child: TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Write your description here...',
                hintStyle: TextStyle(
                  color: AppColors.colorFF6767,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.whiteCustom,
        border: Border(
          top: BorderSide(color: AppColors.colorFFC5C5, width: 1),
        ),
      ),
      height: 94,
      child: GestureDetector(
        onTap: () {
          // Submit the complaint
          Navigator.pop(context);
        },
        child: Container(
          height: 54,
          decoration: BoxDecoration(
            color: AppColors.colorFF7030,
            borderRadius: BorderRadius.circular(27),
          ),
          child: const Center(
            child: Text(
              'Submit',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'Manrope',
                color: AppColors.whiteCustom,
              ),
            ),
          ),
        ),
      ),
    );
  }
} 