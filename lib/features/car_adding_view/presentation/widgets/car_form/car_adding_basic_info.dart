import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/car_adding_form_row_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarAddingBasicInfo extends StatelessWidget {
  final TextEditingController brandController;
  final TextEditingController modelController;

  const CarAddingBasicInfo({
    required this.brandController,
    required this.modelController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarAddingFormRowFrame(
      left: TextFieldComponent(
        controller: brandController,
        label: LocaleKeys.new_car_brand,
        placeHolder: LocaleKeys.new_car_brand.tr(),
        icon: Icons.abc,
        isRequired: true,
      ),
      right: TextFieldComponent(
        controller: modelController,
        label: LocaleKeys.new_car_model,
        placeHolder: LocaleKeys.new_car_model.tr(),
        icon: Icons.abc,
        isRequired: true,
      ),
    );
  }
}
