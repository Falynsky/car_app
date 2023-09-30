import 'package:flutter/material.dart';

class CarListCard extends StatelessWidget {
  final String carName;

  const CarListCard({required this.carName, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('CarListCard'),
      ),
    );
  }
}
