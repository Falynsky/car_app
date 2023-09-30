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

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.amber[600],
        borderRadius: BorderRadius.circular(10), // Add a BorderRadius with a circular radius of 10
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(LocaleKeys.car_brand).tr(args: <String>[brand]),
                  const Text(LocaleKeys.car_model).tr(args: <String>[model]),
                  const Text(LocaleKeys.car_color).tr(args: <String>[color]),
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
