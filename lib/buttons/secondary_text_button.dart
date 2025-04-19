import 'package:flutter/material.dart';
import 'package:theme_mode/extensions/extension.dart';
import 'package:theme_mode/themes/app_text_button.dart';

class SecondaryTextButton extends AppTextButton {
  /// {@macro secondary_text_button}
  const SecondaryTextButton({
    super.key,
    required super.label,
    super.onTap,
    super.leading,
    super.trailing,
    super.appButtonSize,
  });

  @override
  Color backgroundColor(BuildContext context) {
    return context.appButtonTheme.secondaryDefault;
  }

  @override
  Color disabledColor(BuildContext context) {
    return context.appButtonTheme.secondaryDisabled;
  }

  @override
  Color focusColor(BuildContext context) {
    return context.appButtonTheme.secondaryFocused;
  }

  @override
  Color hoverColor(BuildContext context) {
    return context.appButtonTheme.secondaryHover;
  }

  @override
  Color textColor(BuildContext context) {
    return context.appButtonTheme.primaryTextOnBrand;
  }
}
