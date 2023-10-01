import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarCardMainInfoBox extends StatelessWidget {
  final String brand;
  final String model;
  final String registration;

  const CarCardMainInfoBox({
    required this.brand,
    required this.model,
    required this.registration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            LocaleKeys.car_brand,
            style: textTheme.labelLarge!.copyWith(fontSize: 18),
            overflow: TextOverflow.ellipsis,
          ).tr(args: <String>[brand]),
          Row(
            children: <Widget>[
              Text(
                LocaleKeys.car_model,
                style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w500),
                overflow: TextOverflow.ellipsis,
              ).tr(),
              const SizedBox(width: 4),
              Text(
                model,
                style: textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
