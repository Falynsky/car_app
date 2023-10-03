import 'package:cars_app/core/utils/color_extension.dart';
import 'package:cars_app/core/utils/constant_styles.dart';
import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/car_adding_form_row_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/custom_raised_button.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CarAddingColorPickerFrame extends StatefulWidget {
  final TextEditingController colorController;

  const CarAddingColorPickerFrame({
    required this.colorController,
    super.key,
  });

  @override
  State<CarAddingColorPickerFrame> createState() => _CarAddingColorPickerFrameState();
}

class _CarAddingColorPickerFrameState extends State<CarAddingColorPickerFrame> {
  late Color pickerColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarAddingFormRowFrame(
          left: TextFieldComponent(
            controller: widget.colorController,
            label: LocaleKeys.new_car_color,
            placeHolder: LocaleKeys.new_car_color.tr(),
            icon: Icons.color_lens_rounded,
            isRequired: true,
            customRegExp: RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$'),
            customErrorMessage: LocaleKeys.example.tr(args: <String>['#FFFFFF']),
          ),
        ),
        const SizedBox(height: 10),
        CarAddingFormRowFrame(
          isExpanded: false,
          left: CustomRaisedButton(
            onPressed: _openPicker,
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

  dynamic _openPicker() {
    pickerColor = widget.colorController.text.parseToColor;
    showDialog(
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(LocaleKeys.new_car_pick_color).tr(),
          content: SingleChildScrollView(
            child: ColorPicker(
              enableAlpha: false,
              pickerColor: pickerColor,
              onColorChanged: changeColor,
              labelTypes: <ColorLabelType>[],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text(LocaleKeys.pick).tr(),
              onPressed: () {
                widget.colorController.text = pickerColor.hexValue;
                setState(() {});
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
      context: context,
    );
  }

  void changeColor(Color color) {
    pickerColor = color;
  }
}
