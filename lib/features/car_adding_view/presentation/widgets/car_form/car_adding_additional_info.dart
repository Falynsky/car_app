import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/frames/car_adding_form_row_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarAddingAdditionalInfo extends StatelessWidget {
  final TextEditingController yearController;
  final TextEditingController registrationController;

  const CarAddingAdditionalInfo({
    required this.yearController,
    required this.registrationController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarAddingFormRowFrame(
      left: TextFieldComponent(
        controller: yearController,
        label: LocaleKeys.new_car_year,
        placeHolder: LocaleKeys.new_car_year.tr(),
        icon: Icons.abc,
        isRequired: true,
        customRegExp: RegExp(r'^\d{4}$'),
        customErrorMessage: LocaleKeys.example.tr(args: <String>['2021']),
      ),
      right: TextFieldComponent(
        controller: registrationController,
        label: LocaleKeys.new_car_registration,
        placeHolder: LocaleKeys.new_car_registration.tr(),
        icon: Icons.abc,
        isRequired: true,
      ),
    );
  }
}
