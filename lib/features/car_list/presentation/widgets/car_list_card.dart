import 'package:flutter/material.dart';

class CarListCard extends StatelessWidget {
  final String brand;
  final String model;
  final String color;
  final String registration;

  const CarListCard({
    required this.brand,
    required this.model,
    required this.color,
    required this.registration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.amber[600],
        borderRadius: BorderRadius.circular(10), // Add a BorderRadius with a circular radius of 10
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Brand: $brand'),
                  Text('Model: $model'),
                  Text('Color: $color'),
                  Text(
                    'Registration: $registration',
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
