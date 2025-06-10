import 'package:example_custom_theme/button_theme.dart';
import 'package:example_custom_theme/colors.dart';
import 'package:example_custom_theme/spin.dart';
import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, general }

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.type,
    required this.text,
    required this.onPressed,
    this.disabled = false,
    this.loading = false,
    this.focusNode,
  });

  final ButtonType type;
  final String text;
  final bool disabled;
  final VoidCallback onPressed;
  final FocusNode? focusNode;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.primary:
        return Container(
          decoration: BoxDecoration(
            gradient: disabled ? gradient1Disabled : gradient1,
            borderRadius: BorderRadius.circular(324),
          ),
          child: ElevatedButton(
            style: AppButtonStyles.primaryStyle,
            onPressed: disabled ? null : onPressed,
            child: loading ? SpinIcon() : Text(text.toUpperCase()),
          ),
        );
      case ButtonType.secondary:
        final isDark =
            MediaQuery.of(context).platformBrightness == Brightness.dark;
        return ElevatedButton(
          style:
              isDark
                  ? AppButtonStyles.secondaryDarkStyle
                  : AppButtonStyles.secondaryLightStyle,
          onPressed: disabled ? null : onPressed,
          child:
              loading
                  ? SpinIcon(
                    color: isDark ? SpinIconColor.black : SpinIconColor.white,
                  )
                  : Text(text.toUpperCase()),
        );
      case ButtonType.general:
        return ElevatedButton(
          focusNode: focusNode,
          onPressed: disabled ? null : onPressed,
          child: loading ? SpinIcon() : Text(text),
        );
    }
  }
}
