import 'package:cars_app/core/providers/car_app_provider.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/data/dto/new_car_owner_dto.dart';
import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

part 'new_car_owner_provider.chopper.dart';

@LazySingleton(env: <String>[Environment.dev])
@ChopperApi()
abstract class NewCarOwnerProvider extends ChopperService {
  @factoryMethod
  static NewCarOwnerProvider create(CarAppProvider provider) {
    return _$NewCarOwnerProvider(provider.client);
  }

  @Get(
    path: '/person-list',
    headers: <String, String>{
      'x-apikey': '795ad45e4dc222bc0e5bd1c163bb885e3635e',
    },
  )
  Future<Response<List<NewCarOwnerDTO>>> getOwners();
}
