import 'package:flutter/material.dart';
import 'package:theme_mode/themes/app_button_theme.dart';
import 'package:theme_mode/themes/app_input_theme.dart';
import 'package:theme_mode/themes/app_typography.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  /// {@macro app_theme}
  const AppTheme({
    required this.appButtonTheme,
    required this.appInputTheme,
    required this.appTypography,
  });

  /// {@macro app_theme}
  factory AppTheme.light() {
    return AppTheme(
      appButtonTheme: AppButtonTheme.light(),
      appInputTheme: AppInputTheme.light(),
      appTypography: AppTypography.light(),
    );
  }

  factory AppTheme.dark() {
    return AppTheme(
      appButtonTheme: AppButtonTheme.dark(),
      appInputTheme: AppInputTheme.dark(),
      appTypography: AppTypography.dark(),
    );
  }

  /// [AppButtonTheme] instance provides configuration of buttons
  final ThemeExtension<AppButtonTheme> appButtonTheme;

  /// [AppInputTheme] instance provides configuration of [AppTextField]
  final ThemeExtension<AppInputTheme> appInputTheme;

  /// [AppTypography] instance provides configuration of [AppTypography]
  final ThemeExtension<AppTypography> appTypography;

  @override
  ThemeExtension<AppTheme> copyWith({
    ThemeExtension<AppButtonTheme>? appButtonTheme,
    ThemeExtension<AppInputTheme>? appInputTheme,
    ThemeExtension<AppTypography>? appTypography,
  }) {
    return AppTheme(
      appButtonTheme: appButtonTheme ?? this.appButtonTheme,
      appInputTheme: appInputTheme ?? this.appInputTheme,
      appTypography: appTypography ?? this.appTypography,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
    covariant ThemeExtension<AppTheme>? other,
    double t,
  ) {
    if (other is! AppTheme) {
      return this;
    }

    return AppTheme(
      appButtonTheme: appButtonTheme.lerp(other.appButtonTheme, t),
      appInputTheme: appInputTheme.lerp(other.appInputTheme, t),
      appTypography: appTypography.lerp(other.appTypography, t),
    );
  }
}
