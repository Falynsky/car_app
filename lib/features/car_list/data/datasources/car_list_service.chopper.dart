// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_list_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$CarListService extends CarListService {
  _$CarListService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = CarListService;

  @override
  Future<Response<CarModel>> getCars() {
    final Uri $url = Uri.parse('/car-list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CarModel, CarModel>($request);
  }
}
