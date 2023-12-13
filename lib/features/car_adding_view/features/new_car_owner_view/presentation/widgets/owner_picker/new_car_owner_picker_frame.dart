import 'package:cars_app/core/widgets/empty_list.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/models/new_car_owner_model.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/presentation/widgets/owner_picker/new_car_owner_picker.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';

class NewCarOwnerPickerFrame extends StatelessWidget {
  NewCarOwnerPickerFrame({
    List<NewCarOwnerModel>? owners,
    super.key,
  }) : owners = owners ?? <NewCarOwnerModel>[];

  final List<NewCarOwnerModel> owners;

  @override
  Widget build(BuildContext context) {
    if (owners.isNotEmpty) {
      return NewCarOwnerPicker(
        owners: owners,
      );
    }
    return const EmptyList(
      caption: LocaleKeys.owners_list_empty,
      iconData: Icons.person,
    );
  }
}
