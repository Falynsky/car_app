import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CarLocalizationBox extends StatefulWidget {
  final double lat;
  final double lng;

  const CarLocalizationBox({
    required this.lat,
    required this.lng,
    super.key,
  });

  @override
  State<CarLocalizationBox> createState() => _CarLocalizationBoxState();
}

class _CarLocalizationBoxState extends State<CarLocalizationBox> {
  double latitude = 50.325909;
  double longitude = 19.187201;
  late final List<Marker> markers;

  @override
  void initState() {
    super.initState();
    markers = <Marker>[
      buildMarker(latitude, longitude),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            width: 300,
            child: FlutterMap(
              options: MapOptions(
                  maxZoom: 18,
                  center: LatLng(50.325909, 19.187201),
                  zoom: 17,
                  onTap: (TapPosition e, LatLng l) async {
                    markers.clear();
                    final Marker buildMarker2 = buildMarker(l.latitude, l.longitude);
                    markers.add(buildMarker2);
                    setState(() {});
                  }),
              children: <Widget>[
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                  markers: markers,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Marker buildMarker(double latitude, double longitude) {
    return Marker(
      point: LatLng(latitude, longitude),
      width: 80,
      height: 80,
      builder: (BuildContext context) => Container(
        child: const Icon(
          Icons.location_pin,
          size: 35,
          color: Colors.pink,
        ),
      ),
    );
  }
}
