import 'package:cars_app/core/utils/color_extension.dart';
import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_detail_label.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailInfoFrame extends StatelessWidget {
  final CarModel car;
  final OwnerModel owner;

  const CarDetailInfoFrame({
    required this.car,
    required this.owner,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const CarDetailLabel(label: LocaleKeys.car_basic_data),
              const Text(LocaleKeys.car_brand).tr(args: <String>[car.brand]),
              const Text(LocaleKeys.car_model).tr(args: <String>[car.model]),
              Text('${owner.firstName} ${owner.lastName}'),
              const CarDetailLabel(label: LocaleKeys.car_details_data),
              const Text(LocaleKeys.car_year).tr(
                args: <String>[
                  car.year.parseToDate.year.toString(),
                ],
              ),
              const Text(LocaleKeys.car_registration).tr(args: <String>[car.registration]),
            ],
          ),
        ),
        Expanded(
          child: Column(
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
                  color: car.color.parseToColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    car.color.toUpperCase(),
                    style: TextStyle(
                      color: car.color.parseToColor.getForegroundColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
