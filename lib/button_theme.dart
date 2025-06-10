import 'package:example_custom_theme/colors.dart';
import 'package:flutter/material.dart';

class AppButtonStyles {
  static ButtonStyle get commonStyle {
    return ElevatedButton.styleFrom(
      minimumSize: Size(320, 48),
      padding: EdgeInsets.all(0),
      textStyle: const TextStyle(
        fontSize: 20,
        fontFamily: 'PixelOperator',
        fontWeight: FontWeight.w400,
      ),
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(324)),
      elevation: 0.0,
      shadowColor: Colors.transparent,
    );
  }

  static ButtonStyle get primaryStyle {
    return commonStyle.copyWith(
      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
        (states) => Colors.transparent,
      ),
      shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
        if (states.contains(WidgetState.focused)) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(324),
            side: const BorderSide(color: whiteColor, width: 2),
          );
        }
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(324));
      }),
    );
  }

  static ButtonStyle get secondaryLightStyle {
    return commonStyle.copyWith(
      backgroundColor: WidgetStatePropertyAll(charcoal),
      foregroundColor: WidgetStatePropertyAll(whiteColor),
      shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
        if (states.contains(WidgetState.focused)) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(324),
            side: const BorderSide(color: whiteColor, width: 2),
          );
        }
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(324));
      }),
    );
  }

  static ButtonStyle get secondaryDarkStyle {
    return commonStyle.copyWith(
      backgroundColor: WidgetStatePropertyAll(whiteColor),
      foregroundColor: WidgetStatePropertyAll(charcoal),
      shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
        if (states.contains(WidgetState.focused)) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(324),
            side: const BorderSide(color: charcoal, width: 2),
          );
        }
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(324));
      }),
    );
  }
}
