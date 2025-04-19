import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_mode/extensions/extension.dart';
import 'package:theme_mode/utils/app_radius.dart';

class AppTextField extends StatelessWidget {
  /// {@macro app_text_field}
  const AppTextField({
    super.key,
    this.controller,
    this.labelText,
    this.enabled = true,
    this.obscureText = false,
    this.onChanged,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.validator,
    this.helperText,
    this.errorText,
    this.suffixIcon,
    this.suffixIconConstraints = const BoxConstraints(
      minHeight: 24,
      minWidth: 40,
    ),
    this.prefixIcon,
    this.prefixIconConstraints = const BoxConstraints(
      minHeight: 24,
      minWidth: 40,
    ),
    this.autofillHints,
    this.onEditingComplete,
    this.inputFormatters,
    this.keyboardType,
    this.maxLines = 1,
  });

  /// The controller for the text field.
  final TextEditingController? controller;

  /// The label text for the text field.
  final String? labelText;

  /// Whether the text field is enabled.
  final bool enabled;

  /// Whether the text field is obscured.
  final bool obscureText;

  /// Called when the text field value changes.
  final ValueChanged<String>? onChanged;

  /// The autovalidate mode for the text field.
  final AutovalidateMode autovalidateMode;

  /// The validator for the text field.
  final FormFieldValidator<String>? validator;

  /// The helper text for the text field.
  final String? helperText;

  /// The error text for the text field.
  final String? errorText;

  /// The suffix icon for the text field.
  final Widget? suffixIcon;

  /// The constraints for the suffix icon.
  final BoxConstraints? suffixIconConstraints;

  /// The prefix icon for the text field.
  final Widget? prefixIcon;

  /// The constraints for the prefix icon.
  final BoxConstraints? prefixIconConstraints;

  /// The autofillhints for app text field.
  final Iterable<String>? autofillHints;

  /// Called when the text field value completed.
  final VoidCallback? onEditingComplete;

  /// The input formatters for the text field.
  final List<TextInputFormatter>? inputFormatters;

  /// The keyboard type for the text field.
  final TextInputType? keyboardType;

  /// the maximum lines available in text field.
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onEditingComplete: onEditingComplete,
      autofillHints: autofillHints,
      controller: controller,
      enabled: enabled,
      obscureText: obscureText,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      validator: validator,
      maxLines: maxLines,
      style: WidgetStateTextStyle.resolveWith((states) {
        late final Color textColor;

        if (states.contains(WidgetState.error)) {
          textColor = context.appInputTheme.focusedTextDefault;
        } else if (states.contains(WidgetState.focused)) {
          textColor = context.appInputTheme.focusedTextDefault;
        } else if (states.contains(WidgetState.disabled)) {
          textColor = context.appInputTheme.disabledText;
        } else {
          textColor = context.appInputTheme.defaultText;
        }

        return context.typography.inputPlaceHolder.copyWith(color: textColor);
      }),
      cursorColor: context.appInputTheme.focusedTextDefault,
      cursorHeight: 16,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: WidgetStateTextStyle.resolveWith((states) {
          late final Color textColor;

          if (states.contains(WidgetState.error)) {
            textColor = context.appInputTheme.errorTextDefault;
          } else if (states.contains(WidgetState.focused)) {
            textColor = context.appInputTheme.focusedOnBrand;
          } else if (states.contains(WidgetState.disabled)) {
            textColor = context.appInputTheme.disabledText;
          } else {
            textColor = context.appInputTheme.defaultText;
          }

          return context.typography.inputPlaceHolder.copyWith(color: textColor);
        }),
        floatingLabelStyle: WidgetStateTextStyle.resolveWith((states) {
          late final Color textColor;

          if (states.contains(WidgetState.error)) {
            textColor = context.appInputTheme.errorTextDefault;
          } else if (states.contains(WidgetState.focused)) {
            textColor = context.appInputTheme.focusedOnBrand;
          } else {
            textColor = context.appInputTheme.defaultText;
          }

          return context.typography.inputLabel.copyWith(color: textColor);
        }),
        filled: true,
        fillColor:
            enabled
                ? context.appInputTheme.defaultColor
                : context.appInputTheme.disabledColor,
        border: WidgetStateInputBorder.resolveWith((states) {
          late final Color borderColor;

          if (states.contains(WidgetState.error)) {
            borderColor = context.appInputTheme.borderError;
          } else if (states.contains(WidgetState.focused)) {
            borderColor = context.appInputTheme.borderFocused;
          } else if (states.contains(WidgetState.disabled)) {
            borderColor = context.appInputTheme.borderDisabled;
          } else if (states.contains(WidgetState.hovered)) {
            borderColor = context.appInputTheme.borderHover;
          } else {
            borderColor = context.appInputTheme.borderDefault;
          }

          return OutlineInputBorder(
            borderRadius: const BorderRadius.all(AppRadius.md),
            borderSide: BorderSide(color: borderColor),
          );
        }),
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        helperText: helperText,
        helperStyle: WidgetStateTextStyle.resolveWith((states) {
          late final Color textColor;

          if (states.contains(WidgetState.error)) {
            textColor = context.appInputTheme.errorTextDefault;
          } else if (states.contains(WidgetState.focused)) {
            textColor = context.appInputTheme.focusedOnBrand;
          } else if (states.contains(WidgetState.disabled)) {
            textColor = context.appInputTheme.disabledText;
          } else {
            textColor = context.appInputTheme.defaultText;
          }

          return context.typography.inputHint.copyWith(color: textColor);
        }),
        errorText: errorText,
        errorStyle: context.typography.inputHint.copyWith(
          color: context.appInputTheme.errorTextDefault,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        suffixIconConstraints: suffixIconConstraints,
        prefixIconConstraints: prefixIconConstraints,
      ),
    );
  }
}
