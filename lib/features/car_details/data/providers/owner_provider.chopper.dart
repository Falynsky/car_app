// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_provider.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$OwnerProvider extends OwnerProvider {
  _$OwnerProvider([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OwnerProvider;

  @override
  Future<Response<List<OwnerDTO>>> getOwners() {
    final Uri $url = Uri.parse('/person-list');
    final Map<String, String> $headers = {
      'x-apikey': '795ad45e4dc222bc0e5bd1c163bb885e3635e',
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<OwnerDTO>, OwnerDTO>($request);
  }
}
