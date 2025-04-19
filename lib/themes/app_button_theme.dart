import 'package:flutter/material.dart';
import 'package:theme_mode/utils/app_colors.dart';

class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  AppButtonTheme({
    required this.primaryText,
    required this.primaryDefault,
    required this.primaryHover,
    required this.primaryFocused,
    required this.primaryTextDisabled,
    required this.primaryDisabled,
    required this.primaryTextOnBrand,

    required this.secondaryText,
    required this.secondaryDefault,
    required this.secondaryHover,
    required this.secondaryFocused,
    required this.secondaryTextDisabled,
    required this.secondaryDisabled,

    required this.outlinedFocused,
    required this.outlinedDisabled,
    required this.buttonLineDefault,
    required this.outlinedBorderDisabled,
    required this.outlinedHover,
    required this.outlinedDefault,
  });

  factory AppButtonTheme.light() {
    return AppButtonTheme(
      primaryText: AppColors.white,
      primaryDefault: AppColors.brand.shade500,
      primaryHover: AppColors.brand.shade600,
      primaryFocused: AppColors.brand.shade700,
      primaryTextDisabled: AppColors.grayLight.shade400,
      primaryDisabled: AppColors.grayLight.shade200,
      primaryTextOnBrand: AppColors.white,
      secondaryText: AppColors.brand.shade700, // Darker brand for contrast
      secondaryDefault: AppColors.grayLight.shade50, // Light background
      secondaryHover: AppColors.grayLight.shade100,
      secondaryFocused: AppColors.grayLight.shade200,
      secondaryTextDisabled: AppColors.grayLight.shade300,
      secondaryDisabled: AppColors.grayLight.shade100,

      outlinedFocused: AppColors.brand.shade700,
      outlinedHover: AppColors.brand.shade600,
      outlinedDisabled: AppColors.grayLight.shade200,
      buttonLineDefault: AppColors.grayLight.shade400,
      outlinedBorderDisabled: AppColors.grayLight.shade200,
      outlinedDefault: AppColors.black,
    );
  }

  factory AppButtonTheme.dark() {
    return AppButtonTheme(
      // Primary Button Colors
      primaryText: AppColors.white,
      primaryDefault: AppColors.brand.shade400, // Slightly lighter in dark mode
      primaryHover: AppColors.brand.shade300, // Hover goes lighter
      primaryFocused: AppColors.brand.shade200, // Focus even lighter
      primaryTextDisabled: AppColors.grayDark.shade500,
      primaryDisabled: AppColors.grayDark.shade700,
      primaryTextOnBrand: AppColors.white,

      // Secondary Button Colors
      secondaryText: AppColors.white,
      secondaryDefault: AppColors.grayDark.shade800, // Dark background
      secondaryHover: AppColors.grayDark.shade700, // Slightly lighter hover
      secondaryFocused: AppColors.grayDark.shade600, // Even lighter focus
      secondaryTextDisabled: AppColors.grayDark.shade500,
      secondaryDisabled: AppColors.grayDark.shade800,

      // Outlined Button Colors
      outlinedFocused: AppColors.brand.shade300,
      outlinedHover: AppColors.brand.shade400,
      outlinedDisabled: AppColors.grayDark.shade700,
      buttonLineDefault: AppColors.grayDark.shade400, // Border color
      outlinedBorderDisabled: AppColors.grayDark.shade700,
      outlinedDefault: AppColors.white, // Text color
    );
  }

  final Color primaryText;
  final Color primaryDefault;
  final Color primaryHover;
  final Color primaryFocused;
  final Color primaryTextDisabled;
  final Color primaryDisabled;
  final Color primaryTextOnBrand;

  final Color secondaryText;
  final Color secondaryDefault;
  final Color secondaryHover;
  final Color secondaryFocused;
  final Color secondaryTextDisabled;
  final Color secondaryDisabled;

  final Color outlinedFocused;
  final Color outlinedHover;
  final Color outlinedDisabled;
  final Color buttonLineDefault;
  final Color outlinedDefault;
  final Color outlinedBorderDisabled;

  @override
  ThemeExtension<AppButtonTheme> copyWith({
    Color? primaryText,
    Color? primaryDefault,
    Color? primaryHover,
    Color? primaryFocused,
    Color? primaryTextDisabled,
    Color? primaryDisabled,
    Color? primaryTextOnBrand,

    Color? secondaryText,
    Color? secondaryDefault,
    Color? secondaryHover,
    Color? secondaryFocused,
    Color? secondaryTextDisabled,
    Color? secondaryDisabled,

    Color? outlinedFocused,
    Color? outlinedHover,
    Color? outlinedDisabled,
    Color? buttonLineDefault,
    Color? outlinedBorderDisabled,
    Color? outlinedDefault,
  }) {
    return AppButtonTheme(
      primaryText: primaryText ?? this.primaryText,
      primaryDefault: primaryDefault ?? this.primaryDefault,
      primaryHover: primaryHover ?? this.primaryHover,
      primaryFocused: primaryFocused ?? this.primaryFocused,
      primaryTextDisabled: primaryTextDisabled ?? this.primaryTextDisabled,
      primaryDisabled: primaryDisabled ?? this.primaryDisabled,
      primaryTextOnBrand: primaryTextOnBrand ?? this.primaryTextOnBrand,

      secondaryText: secondaryText ?? this.secondaryText,
      secondaryDefault: secondaryDefault ?? this.secondaryDefault,
      secondaryHover: secondaryHover ?? this.secondaryHover,
      secondaryFocused: secondaryFocused ?? this.secondaryFocused,
      secondaryTextDisabled:
          secondaryTextDisabled ?? this.secondaryTextDisabled,
      secondaryDisabled: secondaryDisabled ?? this.secondaryDisabled,

      outlinedFocused: outlinedFocused ?? this.outlinedFocused,
      outlinedHover: outlinedHover ?? this.outlinedHover,
      outlinedDisabled: outlinedDisabled ?? this.outlinedDisabled,
      buttonLineDefault: buttonLineDefault ?? this.buttonLineDefault,
      outlinedBorderDisabled:
          outlinedBorderDisabled ?? this.outlinedBorderDisabled,
      outlinedDefault: outlinedDefault ?? this.outlinedDefault,
    );
  }

  @override
  ThemeExtension<AppButtonTheme> lerp(
    covariant ThemeExtension<AppButtonTheme>? other,
    double t,
  ) {
    if (other is! AppButtonTheme) {
      return this;
    }

    return AppButtonTheme(
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      primaryDefault: Color.lerp(primaryDefault, other.primaryDefault, t)!,
      primaryHover: Color.lerp(primaryHover, other.primaryHover, t)!,
      primaryFocused: Color.lerp(primaryFocused, other.primaryFocused, t)!,
      primaryTextDisabled:
          Color.lerp(primaryTextDisabled, other.primaryTextDisabled, t)!,
      primaryDisabled: Color.lerp(primaryDisabled, other.primaryDisabled, t)!,
      primaryTextOnBrand:
          Color.lerp(primaryTextOnBrand, other.primaryTextOnBrand, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      secondaryDefault:
          Color.lerp(secondaryDefault, other.secondaryDefault, t)!,
      secondaryHover: Color.lerp(secondaryHover, other.secondaryHover, t)!,
      secondaryFocused:
          Color.lerp(secondaryFocused, other.secondaryFocused, t)!,
      secondaryTextDisabled:
          Color.lerp(secondaryTextDisabled, other.secondaryTextDisabled, t)!,
      secondaryDisabled:
          Color.lerp(secondaryDisabled, other.secondaryDisabled, t)!,

      outlinedFocused: Color.lerp(outlinedFocused, other.outlinedFocused, t)!,
      outlinedHover: Color.lerp(outlinedHover, other.outlinedHover, t)!,
      outlinedDisabled:
          Color.lerp(outlinedDisabled, other.outlinedDisabled, t)!,
      buttonLineDefault:
          Color.lerp(buttonLineDefault, other.buttonLineDefault, t)!,
      outlinedBorderDisabled:
          Color.lerp(outlinedBorderDisabled, other.outlinedBorderDisabled, t)!,
      outlinedDefault: Color.lerp(outlinedDefault, other.outlinedDefault, t)!,
    );
  }
}
