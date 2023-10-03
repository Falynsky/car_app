import 'package:cars_app/core/utils/constant_styles.dart';
import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/car_adding_form_row_frame.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/custom_raised_button.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CarAddingMapPickerFrame extends StatefulWidget {
  final TextEditingController latController;
  final TextEditingController lngController;

  const CarAddingMapPickerFrame({
    required this.latController,
    required this.lngController,
    super.key,
  });

  @override
  State<CarAddingMapPickerFrame> createState() => _CarAddingMapPickerFrameState();
}

class _CarAddingMapPickerFrameState extends State<CarAddingMapPickerFrame> {
  late final List<Marker> markers;
  late LatLng latLng;
  MapController mapController = MapController();

  @override
  void initState() {
    super.initState();
    latLng = LatLng(widget.latController.text.tryParseDouble, widget.lngController.text.tryParseDouble);
    markers = <Marker>[
      buildMarker(widget.latController.text.tryParseDouble, widget.lngController.text.tryParseDouble),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarAddingFormRowFrame(
          left: TextFieldComponent(
            controller: widget.latController,
            label: LocaleKeys.new_car_lat,
            placeHolder: LocaleKeys.new_car_lat.tr(),
            icon: Icons.pin_drop,
            isRequired: true,
            customRegExp: RegExp(r'^-?\d+(\.\d+)?$'),
            customErrorMessage: 'np. 50.123',
          ),
          right: TextFieldComponent(
            controller: widget.lngController,
            label: LocaleKeys.new_car_lng,
            placeHolder: LocaleKeys.new_car_lng,
            icon: Icons.pin_drop,
            isRequired: true,
            customRegExp: RegExp(r'^-?\d+(\.\d+)?$'),
            customErrorMessage: 'np. 50.123',
          ),
        ),
        const SizedBox(height: 10),
        CarAddingFormRowFrame(
          isExpanded: false,
          left: CustomRaisedButton(
            onPressed: openMap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(LocaleKeys.new_car_pick_lat_lng, style: buttonLabelStyle).tr(),
                const SizedBox(width: 10),
                const Icon(
                  Icons.map_rounded,
                  size: 30,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  void openMap() {
    double? lat;
    double? lng;
    showDialog(
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: FlutterMap(
                    mapController: mapController,
                    options: MapOptions(
                      center: latLng,
                      zoom: 5,
                      onTap: (TapPosition e, LatLng l) async {
                        lat = l.latitude;
                        lng = l.longitude;
                        markers.clear();
                        final Marker buildMarker2 = buildMarker(l.latitude, l.longitude);
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
              ),
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Pick'),
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
      },
      context: context,
    );
  }

  Marker buildMarker(double lat, double lng) {
    return Marker(
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
    );
  }
}
