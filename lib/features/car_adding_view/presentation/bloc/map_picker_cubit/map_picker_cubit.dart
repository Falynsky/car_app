import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/map_picker_cubit/map_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoder_buddy/geocoder_buddy.dart';
import 'package:injecteo/injecteo.dart';
import 'package:latlong2/latlong.dart';

@lazySingleton
class MapPickerCubit extends Cubit<MapPickerState> {
  late LatLng lastLatLng;

  MapPickerCubit() : super(const MapPickerState.loading());

  void initMap(LatLng latLng) {
    emit(const MapPickerState.loading());
    lastLatLng = latLng;
    emit(
      MapPickerState.success(
        latLng: latLng,
        markers: <Marker>[buildMarker(latLng)],
      ),
    );
  }

  void updateMap(String text) async {
    emit(const MapPickerState.loading());
    final List<GBSearchData> data = await GeocoderBuddy.query(text);
    if (data.isNotEmpty) {
      final GBSearchData gbSearchData = data.first;
      final String gbSearchDataLat = gbSearchData.lat;
      final String gbSearchDataLon = gbSearchData.lon;
      lastLatLng = LatLng(
        gbSearchDataLat.parseDouble,
        gbSearchDataLon.parseDouble,
      );
    }
    emit(MapPickerState.success(latLng: lastLatLng, markers: <Marker>[buildMarker(lastLatLng)]));
  }

  void selectPointOnMap(LatLng latLng) async {
    emit(const MapPickerState.loading());
    lastLatLng = latLng;
    emit(MapPickerState.success(latLng: lastLatLng, markers: <Marker>[buildMarker(lastLatLng)]));
  }

  void submitMarker() async {
    emit(MapPickerState.submit(latLng: lastLatLng));
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
