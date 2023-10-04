import 'package:cars_app/core/utils/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  group('String.toColor', () {
    test('should return valid foreground white color', () {
      final Color color = const Color(0xFFAA1122).getForegroundColor;
      expect(color, Colors.white);
    });

    test('should return valid foreground white color', () {
      final Color color = const Color(0xFFAAFF22).getForegroundColor;
      expect(color, Colors.black);
    });

    test('should return valid foreground white color', () {
      final String hexColor = const Color(0xFFAAFF22).hexValue;
      expect(hexColor, '#AAFF22');
    });
  });
}
