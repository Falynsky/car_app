import 'package:cars_app/core/utils/constant_styles.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/car_adding_form_row_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/sign_up_button.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarAddingFormFrame extends StatefulWidget {
  @override
  State<CarAddingFormFrame> createState() => _CarAddingFormFrameState();
}

class _CarAddingFormFrameState extends State<CarAddingFormFrame> {
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();
  final TextEditingController _registrationController = TextEditingController();
  final TextEditingController _colorController = TextEditingController();
  final TextEditingController _ownerIdController = TextEditingController();
  final TextEditingController _latController = TextEditingController();
  final TextEditingController _lngController = TextEditingController();
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              CarAddingFormRowFrame(
                left: TextFieldComponent(
                  controller: _brandController,
                  label: LocaleKeys.new_car_brand,
                  placeHolder: LocaleKeys.new_car_brand.tr(),
                  icon: Icons.abc,
                  isRequired: true,
                ),
                right: TextFieldComponent(
                  controller: _modelController,
                  label: LocaleKeys.new_car_model,
                  placeHolder: LocaleKeys.new_car_model.tr(),
                  icon: Icons.abc,
                  isRequired: true,
                ),
              ),
              CarAddingFormRowFrame(
                left: TextFieldComponent(
                  controller: _yearController,
                  label: LocaleKeys.new_car_year,
                  placeHolder: LocaleKeys.new_car_year.tr(),
                  icon: Icons.abc,
                  isRequired: true,
                  customRegExp: RegExp(r'^\d{4}$'),
                  customErrorMessage: 'np. 2021',
                ),
                right: TextFieldComponent(
                  controller: _registrationController,
                  label: LocaleKeys.new_car_registration,
                  placeHolder: LocaleKeys.new_car_registration.tr(),
                  icon: Icons.abc,
                  isRequired: true,
                ),
              ),
              CarAddingFormRowFrame(
                left: TextFieldComponent(
                  controller: _colorController,
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
                  onPressed: () {
                    final bool validate = _formKey.currentState?.validate() ?? false;
                    if (validate) {}
                  },
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
              CarAddingFormRowFrame(
                left: TextFieldComponent(
                  controller: _ownerIdController,
                  label: LocaleKeys.new_car_owner,
                  placeHolder: LocaleKeys.new_car_owner.tr(),
                  icon: Icons.abc,
                  isRequired: true,
                ),
              ),
              CarAddingFormRowFrame(
                left: TextFieldComponent(
                  controller: _latController,
                  label: LocaleKeys.new_car_lat,
                  placeHolder: LocaleKeys.new_car_lat.tr(),
                  icon: Icons.pin_drop,
                  isRequired: true,
                  customRegExp: RegExp(r'^(-?)(0|([1-9][0-9]*)).([0-9]+)$'),
                  customErrorMessage: 'np. 50.123',
                ),
                right: TextFieldComponent(
                  controller: _lngController,
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
                  onPressed: () {
                    final bool validate = _formKey.currentState?.validate() ?? false;
                    if (validate) {}
                  },
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
              CarAddingFormRowFrame(
                isExpanded: false,
                left: CustomRaisedButton(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  onPressed: () {
                    final bool validate = _formKey.currentState?.validate() ?? false;
                    if (validate) {}
                  },
                  child: const Text(
                    LocaleKeys.new_car_add,
                    style: TextStyle(
                      color: Colors.black45,
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ).tr(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
