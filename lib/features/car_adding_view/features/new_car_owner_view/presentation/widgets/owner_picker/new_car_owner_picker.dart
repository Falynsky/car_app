import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/models/new_car_owner_model.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/presentation/widgets/owner_picker/new_car_owner_card.dart';
import 'package:flutter/material.dart';

class NewCarOwnerPicker extends StatelessWidget {
  final List<NewCarOwnerModel> owners;

  const NewCarOwnerPicker({
    required this.owners,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: owners.length,
      itemBuilder: (_, int index) => NewCarOwnerCard(
        owner: owners[index],
      ),
    );
  }
}
