import 'package:cars_app/core/utils/constant_styles.dart';
import 'package:cars_app/core/widgets/custom_raised_button.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/frames/car_adding_form_row_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/map_picker/map_dialog_picker_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarAddingMapPickerFrame extends StatefulWidget {
  const CarAddingMapPickerFrame({
    required this.latController,
    required this.lngController,
    super.key,
  });

  final TextEditingController latController;
  final TextEditingController lngController;

  @override
  State<CarAddingMapPickerFrame> createState() => _CarAddingMapPickerFrameState();
}

class _CarAddingMapPickerFrameState extends State<CarAddingMapPickerFrame> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarAddingFormRowFrame(
          left: TextFieldComponent(
            controller: widget.latController,
            label: LocaleKeys.new_car_lat,
            placeHolder: LocaleKeys.new_car_lat.tr(),
            icon: Icons.pin_drop,
            isRequired: true,
            customRegExp: RegExp(r'^-?\d+(\.\d+)?$'),
            customErrorMessage: LocaleKeys.example.tr(args: <String>['50.123']),
          ),
          right: TextFieldComponent(
            controller: widget.lngController,
            label: LocaleKeys.new_car_lng,
            placeHolder: LocaleKeys.new_car_lng.tr(),
            icon: Icons.pin_drop,
            isRequired: true,
            customRegExp: RegExp(r'^-?\d+(\.\d+)?$'),
            customErrorMessage: LocaleKeys.example.tr(args: <String>['50.123']),
          ),
        ),
        const SizedBox(height: 10),
        CarAddingFormRowFrame(
          isExpanded: false,
          left: CustomRaisedButton(
            onPressed: openMap,
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
        ),
      ],
    );
  }

  void openMap() {
    showDialog<void>(
      builder: (BuildContext context) {
        return MapDialogPickerFrame(
          latController: widget.latController,
          lngController: widget.lngController,
        );
      },
      context: context,
    );
  }
}
