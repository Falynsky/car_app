// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_car_provider.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$NewCarProvider extends NewCarProvider {
  _$NewCarProvider([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NewCarProvider;

  @override
  Future<Response<NewCarResponseDTO>> addNewCar(Map<String, dynamic> car) {
    final Uri $url = Uri.parse('/car-list');
    final $body = car;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<NewCarResponseDTO, NewCarResponseDTO>($request);
  }
}
