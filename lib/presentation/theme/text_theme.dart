import 'package:flutter/material.dart';

class AppTextTheme {
  static AppTextTheme? _instance;
  static AppTextTheme get instance => _instance ??= AppTextTheme();

  final String _starWarsFont = 'Starjedi';
  final String _lotrFont = 'Aniron';

  TextStyle get _baseStarWarsTextStyle => TextStyle(
        fontFamily: _starWarsFont,
        fontStyle: FontStyle.normal,
      );

  TextStyle get starWarsRegular => _baseStarWarsTextStyle.copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get starWarsSmall => _baseStarWarsTextStyle.copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );
  TextStyle get starWarsTitle => _baseStarWarsTextStyle.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );

  TextStyle get _baseLotrTextStyle => TextStyle(
        fontFamily: _lotrFont,
        fontStyle: FontStyle.normal,
      );

  TextStyle get lotrRegular => _baseLotrTextStyle.copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );

  TextStyle get lotrSmall => _baseLotrTextStyle.copyWith(
        fontWeight: FontWeight.normal,
        fontSize: 12,
      );

  TextStyle get lotrTitle => _baseLotrTextStyle.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );
}
