import 'package:cars_app/core/utils/color_extension.dart';
import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarListCard extends StatelessWidget {
  final String brand;
  final String model;
  final String color;
  final String registration;

  const CarListCard({
    required this.brand,
    required this.model,
    required this.color,
    required this.registration,
    super.key,
  });

  Color get getForegroundColor => getParsedToColor.getForegroundColor;

  Color get getParsedToColor => color.parseToColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        color: const Color(0xFFF8F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              LocaleKeys.car_brand,
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                            ).tr(args: <String>[brand]),
                            const Text(
                              LocaleKeys.car_model,
                              overflow: TextOverflow.ellipsis,
                            ).tr(args: <String>[model]),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(LocaleKeys.car_color, style: Theme.of(context).textTheme.labelLarge).tr(),
                          const SizedBox(width: 5),
                          Chip(
                            backgroundColor: getParsedToColor,
                            label: Text(
                              color,
                              style: TextStyle(color: getForegroundColor),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    LocaleKeys.car_registration,
                    overflow: TextOverflow.ellipsis,
                  ).tr(
                    args: <String>[registration],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
