import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CarDetailLabel extends StatelessWidget {
  final String label;

  const CarDetailLabel({
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ).tr(),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.black54,
          ),
          height: 2,
          width: MediaQuery.of(context).size.width * 0.4,
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
