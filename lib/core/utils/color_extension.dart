import 'package:flutter/material.dart';

extension ColorUtils on Color {
  Color get getForegroundColor {
    final double relativeLuminance = computeLuminance();
    if (relativeLuminance > 0.5) {
      return const Color(0xFF000000);
    } else {
      return const Color(0xFFFFFFFF);
    }
  }

  String get hexValue {
    return '#${value.toRadixString(16).substring(2, 8).toUpperCase()}';
  }
}
