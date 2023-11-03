import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_card/car_card_color_box.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_card/car_card_main_info_box.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_card/car_card_registration_box.dart';
import 'package:flutter/material.dart';

class CarCardInfoFrame extends StatelessWidget {
  const CarCardInfoFrame({
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CarCardMainInfoBox(
                    brand: car.brand,
                    model: car.model,
                    registration: car.registration,
                  ),
                  CarCardColorBox(color: car.color),
                ],
              ),
              CarCardRegistrationBox(registration: car.registration),
            ],
          ),
        ),
      ],
    );
  }
}
