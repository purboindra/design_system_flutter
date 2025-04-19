// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:theme_mode/utils/app_colors.dart';

class AppInputTheme extends ThemeExtension<AppInputTheme> {
  /// The default text color.
  final Color defaultText;

  /// The text color when focused on brand.
  final Color focusedOnBrand;

  /// The text color when focused.
  final Color focusedTextDefault;

  /// The text color when error.
  final Color errorTextDefault;

  /// The text color when success.
  final Color successTextDefault;

  /// The text color when disabled.
  final Color disabledText;

  /// The default border color.
  final Color borderDefault;

  /// The border color when hovered.
  final Color borderHover;

  /// The border color when focused.
  final Color borderFocused;

  /// The border color when error.
  final Color borderError;

  /// The border color when success.
  final Color borderSuccess;

  /// The border color when disabled.
  final Color borderDisabled;

  /// The default color.
  final Color defaultColor;

  /// The disabled color.
  final Color disabledColor;

  /// The text color.
  final Color textColor;
  AppInputTheme({
    required this.defaultText,
    required this.focusedOnBrand,
    required this.focusedTextDefault,
    required this.errorTextDefault,
    required this.successTextDefault,
    required this.disabledText,
    required this.borderDefault,
    required this.borderHover,
    required this.borderFocused,
    required this.borderError,
    required this.borderSuccess,
    required this.borderDisabled,
    required this.defaultColor,
    required this.disabledColor,
    required this.textColor,
  });

  factory AppInputTheme.light() {
    return AppInputTheme(
      defaultText: AppColors.grayLight.shade400,
      focusedOnBrand: AppColors.brand.shade500,
      focusedTextDefault: AppColors.grayLight.shade600,
      errorTextDefault: AppColors.redLight.shade400,
      successTextDefault: AppColors.greenLight.shade400,
      disabledText: AppColors.grayLight[250]!,
      borderDefault: AppColors.grayLight[250]!,
      borderHover: AppColors.grayLight.shade300,
      borderFocused: AppColors.brand.shade500,
      borderError: AppColors.redLight.shade400,
      borderSuccess: AppColors.greenLight.shade400,
      borderDisabled: AppColors.grayLight.shade200,
      defaultColor: AppColors.white,
      disabledColor: AppColors.grayLight.shade100,
      textColor: AppColors.grayDark.shade800,
    );
  }

  factory AppInputTheme.dark() {
    return AppInputTheme(
      // Text Colors
      defaultText: AppColors.grayDark.shade400,
      focusedOnBrand: AppColors.brand.shade300, // Lighter brand for focus
      focusedTextDefault: const Color.fromARGB(
        255,
        236,
        237,
        237,
      ), // Brighter text when focused
      errorTextDefault: AppColors.redDark.shade500, // Brighter red in dark mode
      successTextDefault:
          AppColors.greenDark.shade500, // Brighter green in dark mode
      disabledText: AppColors.grayDark.shade500,

      // Border Colors
      borderDefault: AppColors.grayDark.shade600,
      borderHover: AppColors.grayDark.shade500,
      borderFocused: AppColors.brand.shade300, // Lighter brand border
      borderError: AppColors.redDark.shade500,
      borderSuccess: AppColors.greenDark.shade500,
      borderDisabled: AppColors.grayDark.shade700,

      // Background Colors
      defaultColor: AppColors.grayDark.shade900, // Darker background
      disabledColor: AppColors.grayDark.shade800,
      textColor: AppColors.grayLight.shade100,
    );
  }

  @override
  ThemeExtension<AppInputTheme> copyWith({
    Color? defaultText,
    Color? focusedOnBrand,
    Color? focusedTextDefault,
    Color? errorTextDefault,
    Color? successTextDefault,
    Color? disabledText,
    Color? borderDefault,
    Color? borderHover,
    Color? borderFocused,
    Color? borderError,
    Color? borderSuccess,
    Color? borderDisabled,
    Color? defaultColor,
    Color? disabledColor,
    Color? textColor,
  }) {
    return AppInputTheme(
      defaultText: defaultText ?? this.defaultText,
      focusedOnBrand: focusedOnBrand ?? this.focusedOnBrand,
      focusedTextDefault: focusedTextDefault ?? this.focusedTextDefault,
      errorTextDefault: errorTextDefault ?? this.errorTextDefault,
      successTextDefault: successTextDefault ?? this.successTextDefault,
      disabledText: disabledText ?? this.disabledText,
      borderDefault: borderDefault ?? this.borderDefault,
      borderHover: borderHover ?? this.borderHover,
      borderFocused: borderFocused ?? this.borderFocused,
      borderError: borderError ?? this.borderError,
      borderSuccess: borderSuccess ?? this.borderSuccess,
      borderDisabled: borderDisabled ?? this.borderDisabled,
      defaultColor: defaultColor ?? this.defaultColor,
      disabledColor: disabledColor ?? this.disabledColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  ThemeExtension<AppInputTheme> lerp(
    covariant ThemeExtension<AppInputTheme>? other,
    double t,
  ) {
    if (other is! AppInputTheme) {
      return this;
    }

    return AppInputTheme(
      defaultText: Color.lerp(defaultText, other.defaultText, t)!,
      focusedOnBrand: Color.lerp(focusedOnBrand, other.focusedOnBrand, t)!,
      focusedTextDefault:
          Color.lerp(focusedTextDefault, other.focusedTextDefault, t)!,
      errorTextDefault:
          Color.lerp(errorTextDefault, other.errorTextDefault, t)!,
      successTextDefault:
          Color.lerp(successTextDefault, other.successTextDefault, t)!,
      disabledText: Color.lerp(disabledText, other.disabledText, t)!,
      borderDefault: Color.lerp(borderDefault, other.borderDefault, t)!,
      borderHover: Color.lerp(borderHover, other.borderHover, t)!,
      borderFocused: Color.lerp(borderFocused, other.borderFocused, t)!,
      borderError: Color.lerp(borderError, other.borderError, t)!,
      borderSuccess: Color.lerp(borderSuccess, other.borderSuccess, t)!,
      borderDisabled: Color.lerp(borderDisabled, other.borderDisabled, t)!,
      defaultColor: Color.lerp(defaultColor, other.defaultColor, t)!,
      disabledColor: Color.lerp(disabledColor, other.disabledColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
    );
  }
}
