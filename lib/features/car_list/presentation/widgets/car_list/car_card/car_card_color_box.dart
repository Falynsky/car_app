import 'package:cars_app/core/utils/color_extension.dart';
import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarCardColorBox extends StatelessWidget {
  final String color;

  const CarCardColorBox({
    required this.color,
    super.key,
  });

  Color get getForegroundColor => getParsedToColor.getForegroundColor;

  Color get getParsedToColor => color.parseToColor;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            LocaleKeys.car_color,
            style: textTheme.labelLarge,
          ).tr(),
        ),
        Chip(
          padding: const EdgeInsets.all(0),
          backgroundColor: getParsedToColor,
          label: SizedBox(
            width: 70,
            height: 20,
            child: Text(
              color.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(color: getForegroundColor),
            ),
          ),
        )
      ],
    );
  }
}
