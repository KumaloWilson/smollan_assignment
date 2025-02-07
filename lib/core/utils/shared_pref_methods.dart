// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import 'logs.dart';
//
// /// A utility class for caching and retrieving application data using
// /// `SharedPreferences`. This class provides methods to manage onboarding status,
// /// properties, and municipalities.
// class CacheUtils {
//   static const String key = "theme_mode";
//
//   static Future<void> saveThemeMode(ThemeMode mode) async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setInt(key, mode.index);
//   }
//
//   static Future<ThemeMode> getThemeMode() async {
//     final prefs = await SharedPreferences.getInstance();
//     int? themeIndex = prefs.getInt(key);
//
//     if (themeIndex != null && themeIndex >= 0 && themeIndex <= 2) {
//       return ThemeMode.values[themeIndex];
//     }
//
//     return ThemeMode.light; // Default theme
//   }
// }
