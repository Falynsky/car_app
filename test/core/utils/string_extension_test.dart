import 'package:cars_app/core/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  group('String.parseToColor', () {
    test('should return valid white color', () {
      final Color color = '#FFFFFF'.parseToColor;
      expect(color, isA<Color>());
      expect(color, Colors.white);
    });

    test('should return valid red color', () {
      final Color color = '#F44336'.parseToColor;
      expect(color, isA<Color>());
      expect(color, const Color(0xFFF44336));
    });

    test('should return white color for empty string', () {
      final Color color = ''.parseToColor;
      expect(color, isA<Color>());
      expect(color, Colors.white);
    });

    test('should return white color for invalid string', () {
      expect(() => 'dsa'.parseToColor, throwsException);
    });
  });

  group('String.parseToDate', () {
    test('should return valid date', () {
      final DateTime? dateTime = '2005-01-01T10:10:10.000Z'.parseToDate;
      expect(dateTime, isA<DateTime>());
      expect(dateTime!.year, 2005);
      expect(dateTime.month, 1);
      expect(dateTime.day, 1);
      expect(dateTime.hour, 10);
      expect(dateTime.minute, 10);
      expect(dateTime.second, 10);
      expect(dateTime.millisecond, 0);
    });

    test('should return null for invalid string', () {
      final DateTime? dateTime = 'XD'.parseToDate;
      expect(dateTime, isA<DateTime?>());
      expect(dateTime, null);
    });
  });

  group('String.tryParseDouble', () {
    test('should return valid double', () {
      final double parsedDouble = '0.1'.parseDouble;
      expect(parsedDouble, isA<double>());
      expect(parsedDouble, 0.1);
    });

    test('should return 0 for invalid string', () {
      final double parsedDouble = 'XXD'.parseDouble;
      expect(parsedDouble, isA<double>());
      expect(parsedDouble, 0);
    });
  });
}
