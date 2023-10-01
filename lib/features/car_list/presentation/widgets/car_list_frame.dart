import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list.dart';
import 'package:cars_app/features/car_list/presentation/widgets/empty_car_list.dart';
import 'package:flutter/cupertino.dart';

class CarListFrame extends StatelessWidget {
  final List<CarModel> cars;

  CarListFrame({
    List<CarModel>? cars,
    Key? key,
  })  : cars = cars ?? <CarModel>[],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (cars.isNotEmpty) {
      return CarList(cars: cars);
    }
    return const EmptyCarList();
  }
}
