import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/utils/string_extension.dart';
import 'package:cars_app/core/widgets/loading_spinner.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/map_picker_cubit/map_picker_cubit.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/map_picker_cubit/map_picker_state.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/map_picker/map_dialog_picker.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
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
  late List<Marker> markers;
  late LatLng latLng;
  late final TextEditingController pickPlaceController;
  double? lat;
  double? lng;
  late MapPickerCubit mapPickerCubit;

  @override
  void initState() {
    super.initState();
    pickPlaceController = TextEditingController();
    lat = latText.tryParseDouble ?? 50.251985;
    lng = lngText.tryParseDouble ?? 19.006563;
    latLng = LatLng(lat!, lng!);
    mapPickerCubit = getIt<MapPickerCubit>()..initMap(latLng);
  }

  String get lngText => widget.lngController.text;

  String get latText => widget.latController.text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(LocaleKeys.new_car_pick_lat_lng).tr(),
      content: BlocListener<MapPickerCubit, MapPickerState>(
        bloc: mapPickerCubit,
        listener: (BuildContext context, MapPickerState state) {
          state.maybeWhen(
            orElse: () {},
            submit: (LatLng latLng) {
              widget.latController.text = latLng.latitude.toString();
              widget.lngController.text = latLng.longitude.toString();
              Navigator.of(context).pop();
            },
          );
        },
        child: BlocBuilder<MapPickerCubit, MapPickerState>(
          bloc: mapPickerCubit,
          builder: (BuildContext context, MapPickerState state) {
            return state.maybeWhen(
              orElse: () => const LoadingSpinner(),
              success: (LatLng latLng, List<Marker> markers) {
                return MapDialogPicker(
                  markers: markers,
                  latLng: latLng,
                  pickPlaceController: pickPlaceController,
                );
              },
            );
          },
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          child: const Text(LocaleKeys.pick).tr(),
          onPressed: () {
            mapPickerCubit.submitMarker();
          },
        ),
      ],
    );
  }
}
