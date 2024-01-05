import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/map_picker_cubit/map_picker_cubit.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/text_field_component.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapDialogPicker extends StatelessWidget {

  const MapDialogPicker({
    required this.markers,
    required this.latLng,
    required this.pickPlaceController,
    super.key,
  });
  
  final List<Marker> markers;
  final LatLng latLng;
  final TextEditingController pickPlaceController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                          getIt<MapPickerCubit>().updateMap(text);
                        }
                      },
                      child: const Icon(
                        size: 40,
                        Icons.search_rounded,
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
                  options: MapOptions(
                    center: latLng,
                    zoom: 18,
                    maxZoom: 18,
                    onTap: (TapPosition e, LatLng latLng) {
                      getIt<MapPickerCubit>().selectPointOnMap(latLng);
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
    );
  }
}
