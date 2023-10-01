import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_card/car_card_info_frame.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
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
          Navigator.of(context).push(
            PageRouteBuilder<Scaffold>(
              pageBuilder: (BuildContext context, _, __) => Scaffold(
                appBar: AppBar(
                  actions: <Widget>[
                    IconButton(
                      padding: const EdgeInsets.only(right: 10),
                      icon: const Icon(Icons.language_rounded),
                      iconSize: 30, // Set the icon for the action widget
                      onPressed: () {
                        context.setLocale(
                          context.locale == const Locale('pl') ? const Locale('en') : const Locale('pl'),
                        );
                      },
                    ),
                  ],
                  title: const Text(LocaleKeys.car_details_title).tr(),
                ),
                body: const Center(
                  child: Text('This is a full-screen dialog.'),
                ),
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: CarCardInfoFrame(car: car),
        ),
      ),
    );
  }
}
