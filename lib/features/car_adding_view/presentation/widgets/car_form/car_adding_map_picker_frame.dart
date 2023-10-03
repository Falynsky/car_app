import 'package:cars_app/core/utils/constant_styles.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/car_adding_form_row_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/sign_up_button.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarAddingMapPickerFrame extends StatelessWidget {
  final TextEditingController latController;
  final TextEditingController lngController;

  const CarAddingMapPickerFrame({
    required this.latController,
    required this.lngController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarAddingFormRowFrame(
          left: TextFieldComponent(
            controller: latController,
            label: LocaleKeys.new_car_lat,
            placeHolder: LocaleKeys.new_car_lat.tr(),
            icon: Icons.pin_drop,
            isRequired: true,
            customRegExp: RegExp(r'^(-?)(0|([1-9][0-9]*)).([0-9]+)$'),
            customErrorMessage: 'np. 50.123',
          ),
          right: TextFieldComponent(
            controller: lngController,
            label: LocaleKeys.new_car_lng,
            placeHolder: LocaleKeys.new_car_lng,
            icon: Icons.pin_drop,
            isRequired: true,
            customRegExp: RegExp(r'^(-?)(0|([1-9][0-9]*)).([0-9]+)$'),
            customErrorMessage: 'np. 50.123',
          ),
        ),
        const SizedBox(height: 10),
        CarAddingFormRowFrame(
          isExpanded: false,
          left: CustomRaisedButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(LocaleKeys.new_car_pick_lat_lng, style: buttonLabelStyle).tr(),
                const SizedBox(width: 10),
                const Icon(
                  Icons.map_rounded,
                  size: 30,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
