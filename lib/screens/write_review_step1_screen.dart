import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/text_styles.dart';
import '../constants/image_constants.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/selection_option_widget.dart';

class WriteReviewStep1Screen extends StatefulWidget {
  const WriteReviewStep1Screen({Key? key}) : super(key: key);

  @override
  _WriteReviewStep1ScreenState createState() => _WriteReviewStep1ScreenState();
}

class _WriteReviewStep1ScreenState extends State<WriteReviewStep1Screen> {
  String? _selectedOption;

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
                      _buildShopsSection(),
                      _buildFoodAreaSection(),
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
          Text('Step 1 / 2', style: AppTextStyles.body14Medium),
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
                decoration: const BoxDecoration(color: AppColors.colorFFF5F5),
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
        'Select the space you\'re facing problem in your city.',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.colorFF2E2F,
          height: 1.4,
        ),
      ),
    );
  }

  Widget _buildShopsSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shops',
            style: AppTextStyles.title16Medium.copyWith(
              color: AppColors.colorFF6767,
            ),
          ),
          const SizedBox(height: 8),
          SelectionOptionWidget(
            iconPath: ImageConstant.imgWashingMachine,
            title: 'Electrical Shops',
            isSelected: _selectedOption == 'Electrical Shops',
            onTap: () {
              setState(() {
                _selectedOption = 'Electrical Shops';
              });
            },
          ),
          const SizedBox(height: 8),
          SelectionOptionWidget(
            iconPath: ImageConstant.imgWashroom,
            title: 'Books Shop',
            isSelected: _selectedOption == 'Books Shop',
            onTap: () {
              setState(() {
                _selectedOption = 'Books Shop';
              });
            },
          ),
          const SizedBox(height: 8),
          SelectionOptionWidget(
            iconPath: ImageConstant.imgWatercooler,
            title: 'Hardware Shops',
            isSelected: _selectedOption == 'Hardware Shops',
            onTap: () {
              setState(() {
                _selectedOption = 'Hardware Shops';
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFoodAreaSection() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Food Area',
            style: AppTextStyles.title16Medium.copyWith(
              color: AppColors.colorFF6767,
            ),
          ),
          const SizedBox(height: 8),
          SelectionOptionWidget(
            iconPath: ImageConstant.imgCanteen,
            title: 'Canteens',
            isSelected: _selectedOption == 'Canteens',
            onTap: () {
              setState(() {
                _selectedOption = 'Canteens';
              });
            },
          ),
          const SizedBox(height: 8),
          SelectionOptionWidget(
            iconPath: ImageConstant.imgJuice,
            title: 'Juice Corner',
            isSelected: _selectedOption == 'Juice Corner',
            onTap: () {
              setState(() {
                _selectedOption = 'Juice Corner';
              });
            },
          ),
          const SizedBox(height: 8),
          SelectionOptionWidget(
            iconPath: ImageConstant.imgMess,
            title: 'Restaurants',
            isSelected: _selectedOption == 'Restaurants',
            onTap: () {
              setState(() {
                _selectedOption = 'Restaurants';
              });
            },
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
          Navigator.pushNamed(context, '/step2');
        },
        child: Container(
          height: 54,
          decoration: BoxDecoration(
            color: AppColors.colorFF7030,
            borderRadius: BorderRadius.circular(27),
          ),
          child: const Center(
            child: Text(
              'Next',
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