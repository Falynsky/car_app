import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CarLocalizationBox extends StatelessWidget {
  final double lat;
  final double lng;

  const CarLocalizationBox({
    required this.lat,
    required this.lng,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SizedBox(
          height: 250,
          child: FlutterMap(
            options: MapOptions(
              interactiveFlags: InteractiveFlag.none,
              center: LatLng(lat, lng),
              zoom: 15,
            ),
            children: <Widget>[
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: <Marker>[
                  Marker(
                    point: LatLng(lat, lng),
                    width: 80,
                    height: 80,
                    builder: (BuildContext context) => Container(
                      child: const Icon(
                        Icons.location_pin,
                        size: 35,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
