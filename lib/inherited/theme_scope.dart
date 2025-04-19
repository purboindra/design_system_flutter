import 'package:flutter/material.dart';
import 'package:theme_mode/themes/app_theme.dart';

class ThemeScope extends InheritedWidget {
  /// {@macro theme_scope}
  const ThemeScope({
    super.key,
    required super.child,
    required this.themeMode,
    required this.appTheme,
  });

  /// The current theme mode.
  final ThemeMode themeMode;

  /// The current app theme.
  final AppTheme appTheme;

  /// The current theme.
  static ThemeScope of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<ThemeScope>();
    assert(result != null, 'No ThemeScope found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ThemeScope oldWidget) => true;
}
