import 'package:flutter/material.dart';
import 'package:theme_mode/inherited/theme_scope.dart';
import 'package:theme_mode/themes/app_button_theme.dart';
import 'package:theme_mode/themes/app_input_theme.dart';
import 'package:theme_mode/themes/app_theme.dart';
import 'package:theme_mode/themes/app_typography.dart';
import 'package:theme_mode/utils/app_colors.dart';

extension ThemeExt on BuildContext {
  /// The current theme.
  ThemeData get theme => Theme.of(this);

  /// The current app theme.
  ThemeScope get thmeScopeExtension => ThemeScope.of(this);

  ///the current button theme
  AppButtonTheme get buttonTheme =>
      theme.extension<AppTheme>()!.appButtonTheme as AppButtonTheme;

  /// The current app inputTheme.
  AppInputTheme get inputTheme =>
      theme.extension<AppTheme>()!.appInputTheme as AppInputTheme;

  /// The current app typography.
  AppTypography get typography =>
      theme.extension<AppTheme>()!.appTypography as AppTypography;

  AppButtonTheme get appButtonTheme =>
      theme.extension<AppTheme>()!.appButtonTheme as AppButtonTheme;

  AppInputTheme get appInputTheme =>
      theme.extension<AppTheme>()!.appInputTheme as AppInputTheme;

  Color get scaffoldBackground =>
      thmeScopeExtension.themeMode == ThemeMode.dark
          ? AppColors.grayDark.shade900
          : AppColors.grayLight.shade50;
}
