import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// The color white
  static const white = Colors.white;

  /// The color black
  static const black = Colors.black;

  /// The color transparent
  static const transparent = Colors.transparent;

  static const scaffoldLight = Color(0xFFF8F9FA); // Light gray-white
  static const scaffoldDark = Color(0xFF121212); // Near-black
  static const appBarLight = Color(0xFFFFFFFF); // Pure white
  static const appBarDark = Color(0xFF1E1E1E); // Dark gray

  /// Card Colors
  static const cardLight = Color(0xFFFFFFFF); // Pure white
  static const cardDark = Color(0xFF1E1E1E); // Dark gray (same as appBarDark)

  /// Elevated Card Colors
  static const cardElevatedLight = Color(0xFFF8F9FA); // Slightly off-white
  static const cardElevatedDark = Color(0xFF2A2A2A); // Brighter than scaffold

  /// Brand color palette.
  static const brand = MaterialColor(0xFF347AF6, {
    50: Color(0xFFF0F5FF),
    100: Color(0xFFE0ECFF),
    150: Color(0xFFD3E1FB),
    200: Color(0xFFBDD3F9),
    250: Color(0xFF9FBFF9),
    300: Color(0xFF81ACF9),
    400: Color(0xFF5A93F9),
    500: Color(0xFF347AF6),
    600: Color(0xFF1559D1),
    700: Color(0xFF174EAF),
    800: Color(0xFF1D4387),
    900: Color(0xFF163367),
  });

  /// Light gray color palette.
  static const grayLight = MaterialColor(0xFF667085, {
    50: Color(0xFFFCFCFD),
    100: Color(0xFFF9FAFB),
    150: Color(0xFFF2F4F7),
    200: Color(0xFFEAECF0),
    250: Color(0xFFD0D5DD),
    300: Color(0xFF98A2B3),
    400: Color(0xFF667085),
    500: Color(0xFF475467),
    600: Color(0xFF344054),
    700: Color(0xFF182230),
    800: Color(0xFF101828),
    900: Color(0xFF0C111D),
  });

  /// Dark gray color palette.
  static const grayDark = MaterialColor(0xFF85888E, {
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF5F5F6),
    150: Color(0xFFF0F1F1),
    200: Color(0xFFECECED),
    250: Color(0xFFCECFD2),
    300: Color(0xFF94969C),
    400: Color(0xFF85888E),
    500: Color(0xFF61646C),
    600: Color(0xFF333741),
    700: Color(0xFF1F242F),
    800: Color(0xFF161B26),
    900: Color(0xFF0C111D),
  });

  /// Light mode red palette (for error states)
  static const redLight = MaterialColor(
    0xFFD92D20, // Primary error color
    {
      50: Color(0xFFFEF3F2),
      100: Color(0xFFFEE4E2),
      150: Color(0xFFFECDCA),
      200: Color(0xFFFDA29B),
      250: Color(0xFFF97066),
      300: Color(0xFFF04438),
      400: Color(0xFFD92D20), // Base
      500: Color(0xFFB42318),
      600: Color(0xFF912018),
      700: Color(0xFF7A271A),
      800: Color(0xFF55160C),
      900: Color(0xFF2E0A04),
    },
  );

  /// Dark mode red palette
  static const redDark = MaterialColor(
    0xFFF97066, // Lighter base for better visibility in dark mode
    {
      50: Color(0xFF2E0A04),
      100: Color(0xFF55160C),
      150: Color(0xFF7A271A),
      200: Color(0xFF912018),
      250: Color(0xFFB42318),
      300: Color(0xFFD92D20), // Dark mode uses light mode's 400
      400: Color(0xFFF04438), // Light mode's 300
      500: Color(0xFFF97066), // Light mode's 250
      600: Color(0xFFFDA29B),
      700: Color(0xFFFECDCA),
      800: Color(0xFFFEE4E2),
      900: Color(0xFFFEF3F2),
    },
  );

  /// Light mode green palette (success states)
  static const greenLight = MaterialColor(
    0xFF12B76A, // Primary success color
    {
      50: Color(0xFFECFDF3),
      100: Color(0xFFD1FADF),
      150: Color(0xFFA6F4C5),
      200: Color(0xFF6CE9A6),
      250: Color(0xFF32D583),
      300: Color(0xFF12B76A), // Base
      400: Color(0xFF039855),
      500: Color(0xFF027A48),
      600: Color(0xFF05603A),
      700: Color(0xFF054F31),
      800: Color(0xFF073E25),
      900: Color(0xFF042F1A),
    },
  );

  /// Dark mode green palette
  static const greenDark = MaterialColor(
    0xFF32D583, // Brighter base for dark mode
    {
      50: Color(0xFF042F1A),
      100: Color(0xFF073E25),
      150: Color(0xFF054F31),
      200: Color(0xFF05603A),
      250: Color(0xFF027A48),
      300: Color(0xFF039855), // Dark mode uses light mode's 400
      400: Color(0xFF12B76A), // Light mode's 300
      500: Color(0xFF32D583), // Light mode's 250
      600: Color(0xFF6CE9A6),
      700: Color(0xFFA6F4C5),
      800: Color(0xFFD1FADF),
      900: Color(0xFFECFDF3),
    },
  );
}
