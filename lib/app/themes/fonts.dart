import 'package:flutter/material.dart';

import 'package:Indiana/app/themes/colors.dart' as app_colors;

class AppFonts {
  static const TextStyle h1 = TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w100,
      letterSpacing: -1.5,
      fontFamily: 'Poppins Bold',
      color: Color.fromRGBO(3, 3, 3, 1));

  static const TextStyle h2 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w100,
      letterSpacing: -0.5,
      fontFamily: 'Poppins Bold',
      color: Color.fromRGBO(3, 3, 3, 1));

  static const TextStyle h3 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      fontFamily: 'Poppins Bold',
      color: Color.fromRGBO(3, 3, 3, 1));

  static const TextStyle h4 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      fontFamily: 'Poppins Bold',
      color: Color.fromRGBO(3, 3, 3, 1));

  static const TextStyle p = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      fontFamily: 'Poppins Regular',
      color: Color.fromRGBO(3, 3, 3, 1));
}

class ErrorFonts {
  static const TextStyle errorMessage = TextStyle(
    color: app_colors.ErrorColors.primary,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    fontFamily: 'Poppins',
  );
}
