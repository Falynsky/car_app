import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_card/car_card.dart';
import 'package:flutter/material.dart';

class CarList extends StatelessWidget {
  const CarList({
    required this.cars,
    super.key,
  });

  final List<CarModel> cars;

  @override
  Widget build(BuildContext context) {
    final int length = cars.length;
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(10, index == 0 ? 10 : 0, 10, length - 1 != index ? 10 : 100),
            child: CarCard(car: cars[index]),
          );
        },
      ),
    );
  }
}
