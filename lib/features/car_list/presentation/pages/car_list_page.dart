import 'package:cars_app/features/car_list/presentation/widgets/car_list_card.dart';
import 'package:flutter/material.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, int index) => CarListCard(carName: 'Car $index'),
      ),
    ));
  }
}
