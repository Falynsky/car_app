import 'package:cars_app/features/car_details/presentation/widgets/car_detail_info_frame.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_detail_label.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_localization_box.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatelessWidget {
  final CarModel car;

  const CarDetails({
    required this.car,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CarDetailLabel(label: LocaleKeys.car_localization),
              CarLocalizationBox(
                lat: car.lat,
                lng: car.lng,
              ),
              CarDetailInfoFrame(car: car),
            ],
          ),
        ),
      ),
    );
  }
}
