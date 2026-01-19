import 'package:flutter/material.dart';

class AppTokens {
  static const radiusLg = 22.0;
  static const radiusMd = 18.0;

  static double glassOpacity(Brightness b) => b == Brightness.dark ? 0.55 : 0.72;

  static double borderOpacity({required bool elevated}) => elevated ? 0.45 : 0.25;

  static double shadowOpacity(Brightness b) => b == Brightness.dark ? 0.26 : 0.12;

  static LinearGradient heroGradient(ColorScheme cs, Brightness b) {
    final d = (b == Brightness.dark);
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        cs.primary.withOpacity(d ? 0.26 : 0.14),
        cs.tertiary.withOpacity(d ? 0.20 : 0.10),
        cs.surface,
      ],
    );
  }
}
