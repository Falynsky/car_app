import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoder_buddy/geocoder_buddy.dart';
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
  late LatLng latLng;
  MapController mapController = MapController();
  @override
  void initState() {
    super.initState();
    latLng = LatLng(latitude, longitude);
    markers = <Marker>[
      buildMarker(latitude, longitude),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          InkWell(
              onTap: () {
                GeocoderBuddy.query('Dąbrowa Górnicza').then((List<GBSearchData> data) {
                  markers.clear();
                  latLng = LatLng(double.parse(data[0].lat), double.parse(data[0].lon));
                  mapController.move(latLng, 17);
                  final Marker buildMarker2 = buildMarker(double.parse(data[0].lat), double.parse(data[0].lon));
                  markers.add(buildMarker2);
                  setState(() {});
                });
              },
              child: Text('Ustaw moją lokalizację')),
          SizedBox(
            height: 200,
            width: 300,
            child: FlutterMap(
              mapController: mapController,
              options: MapOptions(
                  maxZoom: 18,
                  center: latLng,
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
