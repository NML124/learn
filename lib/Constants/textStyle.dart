import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  static const TextStyle titleText = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 40,
    color: ColorsConstant.darkBlue,
  );

  static const TextStyle subtitleText = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600, // SemiBold
  );

  static TextStyle bodyText(Color color) => TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal, // Regular
    color: color,
  );
}
