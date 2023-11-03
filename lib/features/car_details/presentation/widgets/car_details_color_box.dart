import 'package:cars_app/core/utils/color_extension.dart';
import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailsColorBox extends StatelessWidget {
  const CarDetailsColorBox({
    required this.color,
    super.key,
  });

  final String color;

  Color get getParsedColor => color.parseToColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          LocaleKeys.car_color,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ).tr(),
        const SizedBox(height: 5),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(),
            color: getParsedColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Text(
              color.toUpperCase(),
              style: TextStyle(
                color: getParsedColor.getForegroundColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
