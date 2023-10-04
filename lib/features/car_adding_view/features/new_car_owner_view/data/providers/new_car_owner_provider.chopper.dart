// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_car_owner_provider.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$NewCarOwnerProvider extends NewCarOwnerProvider {
  _$NewCarOwnerProvider([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NewCarOwnerProvider;

  @override
  Future<Response<List<NewCarOwnerDTO>>> getOwners() {
    final Uri $url = Uri.parse('/person-list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<NewCarOwnerDTO>, NewCarOwnerDTO>($request);
  }
}
