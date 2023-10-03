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

  DateTime? get parseToDate =>
      RegExp(r'^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{3}Z$').hasMatch(this) ? DateTime.parse(this) : null;

  double get tryParseDouble => RegExp(r'^-?\d+(\.\d+)?$').hasMatch(this) ? double.parse(this) : 0;
}
