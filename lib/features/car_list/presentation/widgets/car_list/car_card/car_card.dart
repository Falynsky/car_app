import 'package:cars_app/features/car_details/presentation/pages/car_details_page.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_card/car_card_info_frame.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final CarModel car;

  const CarCard({
    required this.car,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        color: const Color(0xFFF8F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(
            PageRouteBuilder<Locale>(
              pageBuilder: (BuildContext context, _, __) => CarDetailsPage(car: car),
            ),
          )
              .then((Locale? locale) {
            if (locale != null) {
              context.setLocale(locale);
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: CarCardInfoFrame(car: car),
        ),
      ),
    );
  }
}
