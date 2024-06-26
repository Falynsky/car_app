import 'package:cars_app/core/utils/constant_styles.dart';
import 'package:cars_app/core/widgets/custom_raised_button.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/presentation/pages/new_car_owner_picker_page.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/frames/car_adding_form_row_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarAddingOwnerPickerFrame extends StatelessWidget {
  const CarAddingOwnerPickerFrame({
    required this.ownerIdController,
    super.key,
  });

  final TextEditingController ownerIdController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarAddingFormRowFrame(
          left: TextFieldComponent(
            controller: ownerIdController,
            label: LocaleKeys.new_car_owner,
            placeHolder: LocaleKeys.new_car_owner.tr(),
            icon: Icons.abc,
            isRequired: true,
          ),
        ),
        const SizedBox(height: 10),
        CarAddingFormRowFrame(
          isExpanded: false,
          left: CustomRaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(
                PageRouteBuilder<String>(
                  pageBuilder: (BuildContext context, _, __) => const NewCarOwnerPickerPage(),
                ),
              )
                  .then((String? value) {
                if (value != null) {
                  ownerIdController.text = value;
                }
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(LocaleKeys.new_car_pick_owner, style: buttonLabelStyle).tr(),
                const SizedBox(width: 10),
                const Icon(
                  Icons.person,
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
