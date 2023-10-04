import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'map_picker_state.freezed.dart';

@freezed
class MapPickerState with _$MapPickerState {
  const factory MapPickerState.loading() = _Loading;

  const factory MapPickerState.success({
    required LatLng latLng,
    required List<Marker> markers,
  }) = _Success;

  const factory MapPickerState.submit({
    required LatLng latLng,
  }) = _Submit;
}
