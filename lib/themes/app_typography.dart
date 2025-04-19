import 'package:flutter/material.dart';

interface class AppTypography extends ThemeExtension<AppTypography> {
  AppTypography({
    required this.buttonLarge,
    required this.buttonMedium,
    required this.buttonSmall,
    required this.buttonXLarge,
    required this.button2XLarge,

    required this.inputHint,
    required this.inputLabel,
    required this.inputPlaceHolder,
  });

  /// Button Large
  final TextStyle buttonLarge;

  /// Button Medium
  final TextStyle buttonMedium;

  /// Button Small
  final TextStyle buttonSmall;

  final TextStyle buttonXLarge;

  final TextStyle button2XLarge;

  final TextStyle inputHint;
  final TextStyle inputLabel;
  final TextStyle inputPlaceHolder;

  factory AppTypography.light() {
    return AppTypography(
      buttonLarge: const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
      ),
      buttonMedium: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
      ),
      buttonSmall: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
      ),
      buttonXLarge: const TextStyle(
        fontSize: 20,
        height: 28 / 20,
        fontWeight: FontWeight.w500,
      ),
      button2XLarge: const TextStyle(
        fontSize: 24,
        height: 32 / 24,
        fontWeight: FontWeight.w500,
      ),

      inputHint: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
      ),
      inputLabel: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
      ),
      inputPlaceHolder: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  factory AppTypography.dark() {
    return AppTypography(
      // Button Typography (same metrics, different color application)
      buttonLarge: const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: Colors.white, // Explicit white for dark mode
      ),
      buttonMedium: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      buttonSmall: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      buttonXLarge: const TextStyle(
        fontSize: 20,
        height: 28 / 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      button2XLarge: const TextStyle(
        fontSize: 24,
        height: 32 / 24,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),

      // Input Typography
      inputHint: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFFA1A1AA), // Gray-400 equivalent
      ),
      inputLabel: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      inputPlaceHolder: const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF71717A), // Gray-500 equivalent
      ),
    );
  }

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? buttonLarge,
    TextStyle? buttonMedium,
    TextStyle? buttonSmall,
    TextStyle? buttonXLarge,
    TextStyle? button2XLarge,
    TextStyle? inputHint,
    TextStyle? inputLabel,
    TextStyle? inputPlaceHolder,
  }) {
    return AppTypography(
      buttonLarge: buttonLarge ?? this.buttonLarge,
      buttonMedium: buttonMedium ?? this.buttonMedium,
      buttonSmall: buttonSmall ?? this.buttonSmall,
      buttonXLarge: buttonXLarge ?? this.buttonXLarge,
      button2XLarge: button2XLarge ?? this.button2XLarge,

      inputHint: inputHint ?? this.inputHint,
      inputLabel: inputLabel ?? this.inputLabel,
      inputPlaceHolder: inputPlaceHolder ?? this.inputPlaceHolder,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other is! AppTypography) {
      return this;
    }

    return AppTypography(
      buttonLarge: TextStyle.lerp(buttonLarge, other.buttonLarge, t)!,
      buttonMedium: TextStyle.lerp(buttonMedium, other.buttonMedium, t)!,
      buttonSmall: TextStyle.lerp(buttonSmall, other.buttonSmall, t)!,
      buttonXLarge: TextStyle.lerp(buttonXLarge, other.buttonXLarge, t)!,
      button2XLarge: TextStyle.lerp(button2XLarge, other.button2XLarge, t)!,

      inputHint: TextStyle.lerp(inputHint, other.inputHint, t)!,
      inputLabel: TextStyle.lerp(inputLabel, other.inputLabel, t)!,
      inputPlaceHolder:
          TextStyle.lerp(inputPlaceHolder, other.inputPlaceHolder, t)!,
    );
  }
}

/// {@macro app_typography}
class AppRegularTypography extends AppTypography {
  /// {@macro app_typography}
  AppRegularTypography({
    super.buttonLarge = const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w500,
    ),
    super.buttonMedium = const TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
    ),
    super.buttonSmall = const TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
    ),
    super.buttonXLarge = const TextStyle(
      fontSize: 20,
      height: 28 / 20,
      fontWeight: FontWeight.w500,
    ),
    super.button2XLarge = const TextStyle(
      fontSize: 24,
      height: 32 / 24,
      fontWeight: FontWeight.w500,
    ),

    super.inputHint = const TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
    ),
    super.inputLabel = const TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
    ),
    super.inputPlaceHolder = const TextStyle(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w500,
    ),
  });
}
