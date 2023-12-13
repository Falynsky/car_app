import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/car_adding_additional_info.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/car_adding_basic_info.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/frames/car_adding_color_picker_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/frames/car_adding_owner_picker_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/frames/car_adding_save_button_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/map_picker/car_adding_map_picker_frame.dart';
import 'package:flutter/material.dart';

class CarAddingFormFrame extends StatefulWidget {
  const CarAddingFormFrame({super.key});

  @override
  State<CarAddingFormFrame> createState() => _CarAddingFormFrameState();
}

class _CarAddingFormFrameState extends State<CarAddingFormFrame> {
  late final TextEditingController _brandController;
  late final TextEditingController _modelController;
  late final TextEditingController _yearController;
  late final TextEditingController _registrationController;
  late final TextEditingController _colorController;
  late final TextEditingController _ownerIdController;
  late final TextEditingController _latController;
  late final TextEditingController _lngController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _brandController = TextEditingController();
    _modelController = TextEditingController();
    _yearController = TextEditingController();
    _registrationController = TextEditingController();
    _colorController = TextEditingController();
    _ownerIdController = TextEditingController();
    _latController = TextEditingController();
    _lngController = TextEditingController();
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
              CarAddingBasicInfo(
                brandController: _brandController,
                modelController: _modelController,
              ),
              CarAddingAdditionalInfo(
                yearController: _yearController,
                registrationController: _registrationController,
              ),
              CarAddingColorPickerFrame(colorController: _colorController),
              CarAddingOwnerPickerFrame(ownerIdController: _ownerIdController),
              CarAddingMapPickerFrame(
                latController: _latController,
                lngController: _lngController,
              ),
              CarAddingSaveButtonFrame(
                formKey: _formKey,
                brandController: _brandController,
                modelController: _modelController,
                yearController: _yearController,
                registrationController: _registrationController,
                colorController: _colorController,
                ownerIdController: _ownerIdController,
                latController: _latController,
                lngController: _lngController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
