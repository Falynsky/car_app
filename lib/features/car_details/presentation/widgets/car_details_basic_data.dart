import 'package:cars_app/features/car_details/presentation/widgets/car_detail_label.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_details_owner.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailsBasicData extends StatelessWidget {
  final String brand;
  final String model;

  const CarDetailsBasicData({
    required this.brand,
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CarDetailLabel(label: LocaleKeys.car_basic_data),
        const Text(LocaleKeys.car_brand).tr(args: <String>[brand]),
        const Text(LocaleKeys.car_model).tr(args: <String>[model]),
        const CarDetailsOwner(),
      ],
    );
  }
}
