import 'package:flutter/material.dart';
import '../../widgets/custom_typography/typography.dart';


class Palette {
  // Instagram Colors
  static const Color instagramBlue = Color(0xFF0095F6);
  static const Color instagramPink = Color(0xFFFF00FF);
  static const Color instagramBlack = Color(0xFF000000);
  static const Color instagramDarkGray = Color(0xFF121212);
  static const Color instagramWhite = Color(0xFFFFFFFF);
  static const Color instagramGray = Color(0xFF262626);


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
    primaryColor: instagramDarkGray,
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
