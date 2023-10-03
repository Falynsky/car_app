import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoder_buddy/geocoder_buddy.dart';
import 'package:latlong2/latlong.dart';

class MapDialogPickerFrame extends StatefulWidget {
  final TextEditingController latController;
  final TextEditingController lngController;

  const MapDialogPickerFrame({
    required this.latController,
    required this.lngController,
    super.key,
  });

  @override
  State<MapDialogPickerFrame> createState() => _MapDialogPickerFrameState();
}

class _MapDialogPickerFrameState extends State<MapDialogPickerFrame> {
  late final List<Marker> markers;
  late LatLng latLng;
  MapController mapController = MapController();
  late final TextEditingController pickPlaceController;
  double? lat;
  double? lng;

  @override
  void initState() {
    super.initState();
    pickPlaceController = TextEditingController();
    final double latitude = latText.tryParseDouble;
    final double longitude = lngText.tryParseDouble;
    latLng = LatLng(latitude, longitude);
    markers = <Marker>[buildMarker(latLng)];
  }

  String get lngText => widget.lngController.text;

  String get latText => widget.latController.text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextFieldComponent(
                        controller: pickPlaceController,
                        placeHolder: LocaleKeys.map_picker_address.tr(),
                        icon: Icons.pin_drop,
                        isRequired: true,
                        customErrorMessage: LocaleKeys.example.tr(args: <String>['50.123']),
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          final String text = pickPlaceController.text;
                          if (text.isNotEmpty) {
                            final Future<List<GBSearchData>> list = GeocoderBuddy.query(text);
                            list.then((List<GBSearchData> data) {
                              if (data.isNotEmpty) {
                                final GBSearchData gbSearchData = data.first;
                                final String gbSearchDataLat = gbSearchData.lat;
                                final String gbSearchDataLon = gbSearchData.lon;
                                latLng = LatLng(
                                  gbSearchDataLat.tryParseDouble,
                                  gbSearchDataLon.tryParseDouble,
                                );
                                lat = latLng.latitude;
                                lng = latLng.longitude;
                                mapController.move(latLng, 15);
                                final Marker marker = buildMarker(latLng);
                                markers.clear();
                                markers.add(marker);
                                setState(() {});
                              }
                            });
                          }
                        },
                        child: const Icon(
                          size: 40,
                          Icons.map_rounded,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: FlutterMap(
                    mapController: mapController,
                    options: MapOptions(
                      center: latLng,
                      zoom: 18,
                      maxZoom: 18,
                      onTap: (TapPosition e, LatLng latLng) {
                        lat = latLng.latitude;
                        lng = latLng.longitude;
                        markers.clear();
                        final Marker buildMarker2 = buildMarker(latLng);
                        markers.add(buildMarker2);
                        setState(() {});
                      },
                    ),
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
          ),
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          child: const Text(LocaleKeys.pick).tr(),
          onPressed: () {
            if (lat != null && lng != null) {
              widget.latController.text = lat.toString();
              widget.lngController.text = lng.toString();
              setState(() {});
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Marker buildMarker(LatLng latLng) {
    return Marker(
      point: latLng,
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
