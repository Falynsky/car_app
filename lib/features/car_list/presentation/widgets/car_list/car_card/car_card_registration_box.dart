import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarCardRegistrationBox extends StatelessWidget {
  final String registration;

  const CarCardRegistrationBox({
    required this.registration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      LocaleKeys.car_registration,
      overflow: TextOverflow.ellipsis,
    ).tr(
      args: <String>[registration],
    );
  }
}
