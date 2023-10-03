import 'package:flutter/material.dart';

extension StringExtension on String {
  Color get parseToColor {
    if (isEmpty) {
      return Colors.white;
    }

    final String cleanedColor = replaceAll('#', '');
    final int parsedColorValue = int.parse(cleanedColor, radix: 16);
    return Color(parsedColorValue + 0xFF000000);
  }

  DateTime get parseToDate => DateTime.parse(this);
}
