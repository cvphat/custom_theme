import 'package:example_custom_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static TextStyle get headerBody {
    return const TextStyle(
      fontFamily: 'Commission',
      fontSize: 48,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle get headerDisplay {
    return const TextStyle(
      fontFamily: 'Commission',
      fontSize: 64,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle get headerBodyOutline {
    return const TextStyle(
      fontFamily: 'CommissionOutlined',
      fontSize: 48,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle get headerDisplayOutline {
    return const TextStyle(
      fontFamily: 'CommissionOutlined',
      fontSize: 64,
      fontWeight: FontWeight.w700,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      // Primary color scheme
      primaryColor: primaryColor, // Blue
      primaryColorDark:
          primaryColor40, // Blue with 40% black overlay for button states
      scaffoldBackgroundColor: charcoal, // White
      colorScheme: const ColorScheme.light(
        primary: primaryColor, // Blue
        secondary: secondaryColor, // Green
        surface: surfaceColor, // Light Grey for cards/surfaces
        error: errorColor, // Error
      ),

      fontFamily: 'TASAOrbiterDeck',
      // Text theme
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: whiteColor), // Charcoal for primary text
        bodyMedium: TextStyle(
          color: whiteColor,
        ), // Dark Grey for secondary text
        bodySmall: TextStyle(color: whiteColor), // Light Grey for hints
      ),

      // Button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          fixedSize: Size.fromHeight(32),
          backgroundColor: primaryColor, // Blue for buttons
          foregroundColor: charcoal, // Overlay color for press state
          disabledBackgroundColor: primaryColor40,
          textStyle: const TextStyle(fontSize: 20), // White text on buttons
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(324),
          ),
          elevation: 0.0,
          shadowColor: Colors.transparent,
        ).copyWith(
          shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.focused)) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(324),
                side: const BorderSide(color: whiteColor, width: 2),
              );
            }
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(324),
            );
          }),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.focused)) {
              return primaryColor40;
            }
            return primaryColor;
          }),
        ),
      ),

      textSelectionTheme: TextSelectionThemeData(cursorColor: whiteColor),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 1),

        errorStyle: TextStyle(
          fontFamily: 'TASAOrbiterDeck',
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: errorColor,
        ),
        hintStyle: TextStyle(
          fontFamily: 'PixelOperator',
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: whiteColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1000),
          borderSide: BorderSide(color: whiteColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1000),
          borderSide: BorderSide(color: whiteColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1000),
          borderSide: BorderSide(color: whiteColor),
        ),
      ),

      // App bar theme
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor, // Blue for app bar
        foregroundColor: cardColor, // White text/icons on app bar
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
      ),

      // Card theme (e.g., for surfaces)
      cardTheme: const CardTheme(
        color: charcoal, // Light Grey for cards
        shadowColor: cardColor,
      ),

      // Disabled color (e.g., for disabled buttons)
      disabledColor: disabledColor, // Grey
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      // Primary color scheme
      primaryColor: primaryColor, // Blue
      primaryColorDark:
          primaryColor40, // Blue with 40% black overlay for button states
      scaffoldBackgroundColor: cardColor, // White
      colorScheme: const ColorScheme.light(
        primary: primaryColor, // Blue
        secondary: secondaryColor, // Green
        surface: surfaceColor, // Light Grey for cards/surfaces
        error: errorColor, // Error
      ),

      fontFamily: 'TASAOrbiterDeck',
      // Text theme
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: charcoal), // Charcoal for primary text
        bodyMedium: TextStyle(color: charcoal), // Dark Grey for secondary text
        bodySmall: TextStyle(color: charcoal), // Light Grey for hints
      ),

      // Button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          fixedSize: Size.fromHeight(32),
          backgroundColor: primaryColor, // Blue for buttons
          foregroundColor: charcoal, // Overlay color for press state
          disabledBackgroundColor: primaryColor40,
          textStyle: const TextStyle(fontSize: 20), // White text on buttons
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(324),
          ),
          elevation: 0.0,
          shadowColor: Colors.transparent,
        ).copyWith(
          shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.focused)) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(324),
                side: const BorderSide(color: whiteColor, width: 2),
              );
            }
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(324),
            );
          }),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.focused)) {
              return primaryColor40;
            }
            return primaryColor;
          }),
        ),
      ),

      textSelectionTheme: TextSelectionThemeData(cursorColor: charcoal),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 1),
        labelStyle: TextStyle(color: charcoal),
        errorStyle: TextStyle(
          fontFamily: 'TASAOrbiterDeck',
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: errorColor,
        ),
        hintStyle: TextStyle(
          fontFamily: 'PixelOperator',
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1000),
          borderSide: BorderSide(color: charcoal),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1000),
          borderSide: BorderSide(color: charcoal),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1000),
          borderSide: BorderSide(color: charcoal),
        ),
      ),

      // App bar theme
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor, // Blue for app bar
        foregroundColor: cardColor, // White text/icons on app bar
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: charcoal,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
      ),

      // Card theme (e.g., for surfaces)
      cardTheme: CardTheme(
        color: whiteColor, // Light Grey for cards
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),

      // Disabled color (e.g., for disabled buttons)
      disabledColor: disabledColor, // Grey
    );
  }
}
