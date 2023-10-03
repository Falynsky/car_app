import 'package:cars_app/core/utils/constant_styles.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/car_adding_form_row_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/sign_up_button.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarAddingColorPickerFrame extends StatelessWidget {
  final TextEditingController colorController;

  const CarAddingColorPickerFrame({
    required this.colorController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarAddingFormRowFrame(
          left: TextFieldComponent(
            controller: colorController,
            label: LocaleKeys.new_car_color,
            placeHolder: LocaleKeys.new_car_color.tr(),
            icon: Icons.color_lens_rounded,
            isRequired: true,
            customRegExp: RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$'),
            customErrorMessage: 'np. #FFFFFF',
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
                const Text(LocaleKeys.new_car_pick_color, style: buttonLabelStyle).tr(),
                const SizedBox(width: 10),
                const Icon(
                  Icons.color_lens_rounded,
                  size: 30,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
