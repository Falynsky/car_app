import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_card/car_card.dart';
import 'package:flutter/material.dart';

class CarList extends StatelessWidget {
  final List<CarModel> cars;

  const CarList({
    required this.cars,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: cars.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Container(
              child: CarCard(car: cars[index]),
            ),
          );
        },
      ),
    );
  }
}
