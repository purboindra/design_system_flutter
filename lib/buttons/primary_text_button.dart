import 'package:flutter/material.dart';
import 'package:theme_mode/extensions/extension.dart';
import 'package:theme_mode/themes/app_text_button.dart';

class PrimaryTextButton extends AppTextButton {
  const PrimaryTextButton({super.key, required super.label, super.onTap});

  @override
  Color backgroundColor(BuildContext context) {
    return context.appButtonTheme.primaryDefault;
  }

  @override
  Color disabledColor(BuildContext context) {
    return context.appButtonTheme.primaryDisabled;
  }

  @override
  Color focusColor(BuildContext context) {
    return context.appButtonTheme.primaryFocused;
  }

  @override
  Color hoverColor(BuildContext context) {
    return context.appButtonTheme.primaryHover;
  }

  @override
  Color textColor(BuildContext context) {
    return context.appButtonTheme.primaryText;
  }
}
