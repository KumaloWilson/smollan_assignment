import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTypography {
  static TextTheme get nunitoTextTheme {
    return TextTheme(
      displayLarge: GoogleFonts.nunito(
        fontSize: 96.0,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      displayMedium: GoogleFonts.nunito(
        fontSize: 60.0,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      displaySmall: GoogleFonts.nunito(
        fontSize: 48.0,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: GoogleFonts.nunito(
        fontSize: 34.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headlineMedium: GoogleFonts.nunito(
        fontSize: 24.0,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: GoogleFonts.nunito(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: GoogleFonts.nunito(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      titleMedium: GoogleFonts.nunito(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      titleSmall: GoogleFonts.nunito(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyLarge: GoogleFonts.nunito(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyMedium: GoogleFonts.nunito(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      bodySmall: GoogleFonts.nunito(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      labelLarge: GoogleFonts.nunito(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      labelMedium: GoogleFonts.nunito(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.0,
      ),
      labelSmall: GoogleFonts.nunito(
        fontSize: 10.0,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    );
  }
}
