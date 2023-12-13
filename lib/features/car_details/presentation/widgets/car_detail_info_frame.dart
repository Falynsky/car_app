import 'package:cars_app/features/car_details/presentation/widgets/car_details_basic_data.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_details_color_box.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_details_data.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:flutter/material.dart';

class CarDetailInfoFrame extends StatelessWidget {
  const CarDetailInfoFrame({
    required this.car,
    super.key,
  });

  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CarDetailsBasicData(
                brand: car.brand,
                model: car.model,
              ),
              CarDetailsData(
                year: car.year,
                registration: car.registration,
              ),
            ],
          ),
        ),
        Expanded(
          child: CarDetailsColorBox(color: car.color),
        ),
      ],
    );
  }
}
