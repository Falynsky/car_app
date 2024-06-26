import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/core/widgets/custom_raised_button.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_model.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/car_adding_cubit/car_adding_cubit.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/frames/car_adding_form_row_frame.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarAddingSaveButtonFrame extends StatelessWidget {
  const CarAddingSaveButtonFrame({
    required this.formKey,
    required this.brandController,
    required this.modelController,
    required this.yearController,
    required this.registrationController,
    required this.colorController,
    required this.ownerIdController,
    required this.latController,
    required this.lngController,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController brandController;
  final TextEditingController modelController;
  final TextEditingController yearController;
  final TextEditingController registrationController;
  final TextEditingController colorController;
  final TextEditingController ownerIdController;
  final TextEditingController latController;
  final TextEditingController lngController;

  @override
  Widget build(BuildContext context) {
    return CarAddingFormRowFrame(
      isExpanded: false,
      left: CustomRaisedButton(
        padding: const EdgeInsets.symmetric(vertical: 15),
        onPressed: () async {
          final bool validate = formKey.currentState?.validate() ?? false;
          if (validate) {
            final NewCarModel newCar = NewCarModel(
              brand: brandController.text,
              model: modelController.text,
              year: yearController.text,
              registration: registrationController.text,
              color: colorController.text,
              ownerId: ownerIdController.text,
              lat: latController.text.parseDouble,
              lng: lngController.text.parseDouble,
            );
           await getIt<CarAddingCubit>().registerNewCar(newCar);
          }
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
    );
  }
}
