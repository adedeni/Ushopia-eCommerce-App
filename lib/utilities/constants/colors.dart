

import 'package:flutter/material.dart';

class AColors {
  AColors._(); // private constructor

  // App theme colors
  static const Color primary = Color(0xFFE64A19); // Deep orange (bag color)
  static const Color secondary = Colors.pink; // Amber (highlight/accent)
  static const Color accent = Color(0xFF795548); // Brown/earthy neutral

  // Gradient colors (sunset-style, matches logo energy)
  static const Gradient lineGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFE64A19), // deep orange
      Color(0xFFFF7043), // lighter orange
      Color(0xFFFFC107), // amber highlight
    ],
  );

  // Text colors
  static const Color textPrimary = Color(0xFF232323); // almost black
  static const Color textSecondary = Color(0xFF5A5A5A); // warm grey
  static const Color textWhite = Colors.white;

  // Background colors
  static const Color light = Color(0xFFFDF7F3); // subtle warm white
  static const Color dark = Color(0xFF1C1C1C); // deep charcoal
  static const Color primaryBackground = Color(0xFFFFF8F2); // soft warm tint

  // Background Container colors
  static const Color lightContainer = Color(0xFFFDF7F3);
  static Color darkContainer = AColors.white.withOpacity(0.08);

  // Button colors
  static const Color buttonPrimary = Color(0xFFE64A19); // orange button
  static const Color buttonSecondary = Color(0xFFFFC107); // amber button
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

    //Tags and others
      static const Color amber = Color(0xFFFFC107);
      static const Color verifyAndRating = Color(0xFF405DE6);
}
