import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_detail_label.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailsData extends StatelessWidget {
  const CarDetailsData({
    required this.year,
    required this.registration,
    super.key,
  });

  final String year;
  final String registration;

  int? get getYear => getParsedDate?.year;

  DateTime? get getParsedDate => year.parseToDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const CarDetailLabel(label: LocaleKeys.car_details_data),
        const Text(LocaleKeys.car_year).tr(
          args: <String>[getStringifyYear],
        ),
        const Text(LocaleKeys.car_registration).tr(args: <String>[registration]),
      ],
    );
  }

  String get getStringifyYear => getYear?.toString() ?? LocaleKeys.wrong_date_format.tr();
}
