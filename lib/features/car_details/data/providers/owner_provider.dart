import 'package:cars_app/core/providers/car_app_provider.dart';
import 'package:cars_app/features/car_details/data/dto/owner_dto.dart';
import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

part 'owner_provider.chopper.dart';

@LazySingleton(env: <String>[Environment.dev])
@ChopperApi()
abstract class OwnerProvider extends ChopperService {
  @factoryMethod
  static OwnerProvider create(CarAppProvider provider) {
    return _$OwnerProvider(provider.client);
  }

  @Get(
    path: '/person-list',
    headers: <String, String>{
      'x-apikey': '795ad45e4dc222bc0e5bd1c163bb885e3635e',
    },
  )
  Future<Response<List<OwnerDTO>>> getOwners();
}
