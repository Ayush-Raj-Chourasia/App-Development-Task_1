import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageView extends StatelessWidget {
  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;

  const CustomImageView({
    Key? key,
    required this.imagePath,
    this.height,
    this.width,
    this.fit,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imagePath.endsWith('.svg')) {
      return SvgPicture.asset(
        imagePath,
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
      );
    } else {
      return Image.asset(
        imagePath,
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
        color: color,
      );
    }
  }
} 