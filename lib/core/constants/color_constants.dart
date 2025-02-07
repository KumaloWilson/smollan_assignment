import 'package:flutter/material.dart';
import '../../widgets/custom_typography/typography.dart';


class Palette {
  // Instagram Colors
  static const Color instagramBlue = Color(0xFF0095F6);
  static const Color instagramPink = Color(0xFFE1306C);
  static const Color instagramPurple = Color(0xFF833AB4);
  static const Color instagramOrange = Color(0xFFFD1D1D);
  static const Color instagramYellow = Color(0xFFFCAF45);

  // UI colors
  static const Color instagramBlack = Color(0xFF000000);
  static const Color instagramDarkGray = Color(0xFF121212);
  static const Color instagramGray = Color(0xFF262626);
  static const Color instagramLightGray = Color(0xFF8E8E8E);
  static const Color instagramVeryLightGray = Color(0xFFDBDBDB);
  static const Color instagramWhite = Color(0xFFFFFFFF);

  // Additional UI colors
  static const Color instagramBackground = Color(0xFFFAFAFA);
  static const Color instagramBorder = Color(0xFFDDDDDD);
  static const Color instagramLink = Color(0xFF00376B);
  static const Color instagramError = Color(0xFFED4956);
  static const Color instagramSuccess = Color(0xFF78DE45);

  // Story ring gradient colors
  static const List<Color> instagramStoryGradient = [
    instagramYellow,
    instagramPink,
    instagramPurple
  ];


  /// The light theme configuration for the application.
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: instagramBlue,
    hintColor: instagramPink,
    scaffoldBackgroundColor: instagramWhite,
    appBarTheme: const AppBarTheme(
      color: instagramWhite,
      iconTheme: IconThemeData(color: instagramBlack),
      elevation: 0, // No shadow, like Instagram
    ),
    textTheme: CustomTypography.nunitoTextTheme,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: instagramWhite,
      selectedItemColor: instagramBlue,
      unselectedItemColor: instagramGray,
    ),
  );

  // Dark Theme
  /// The dark theme configuration for the application.
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: instagramBlue,
    hintColor: instagramPink,
    scaffoldBackgroundColor: instagramBlack,
    appBarTheme: const AppBarTheme(
      color: instagramDarkGray,
      iconTheme: IconThemeData(color: instagramWhite),
      elevation: 0, // No shadow, like Instagram
    ),
    textTheme: CustomTypography.nunitoTextTheme,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: instagramDarkGray,
      selectedItemColor: instagramBlue,
      unselectedItemColor: instagramGray,
    ),
  );
}
