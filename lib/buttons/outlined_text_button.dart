import 'package:flutter/material.dart';
import 'package:theme_mode/extensions/extension.dart';
import 'package:theme_mode/themes/app_text_button.dart';

class OutlineTextButton extends AppTextButton {
  /// {@macro outline_text_button}
  const OutlineTextButton({
    super.key,
    required super.label,
    super.onTap,
    super.leading,
    super.trailing,
    super.appButtonSize,
  });

  @override
  Color backgroundColor(BuildContext context) {
    return context.appButtonTheme.outlinedDisabled;
  }

  @override
  Color disabledColor(BuildContext context) {
    return context.appButtonTheme.outlinedDisabled;
  }

  @override
  Color focusColor(BuildContext context) {
    return context.appButtonTheme.outlinedFocused;
  }

  @override
  Color hoverColor(BuildContext context) {
    return context.appButtonTheme.outlinedHover;
  }

  @override
  Color textColor(BuildContext context) {
    return context.appButtonTheme.buttonLineDefault;
  }

  @override
  BorderSide defaultBorder(BuildContext context) {
    return BorderSide(color: context.appButtonTheme.buttonLineDefault);
  }

  @override
  BorderSide focusedBorder(BuildContext context) {
    return BorderSide(color: context.appButtonTheme.buttonLineDefault);
  }

  @override
  BorderSide hoverBorder(BuildContext context) {
    return BorderSide(color: context.appButtonTheme.buttonLineDefault);
  }

  @override
  BorderSide disabledBorder(BuildContext context) {
    return BorderSide(color: context.appButtonTheme.outlinedBorderDisabled);
  }
}
