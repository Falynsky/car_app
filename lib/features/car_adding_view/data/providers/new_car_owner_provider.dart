import 'package:cars_app/features/car_adding_view/domain/models/new_car_owner_model.dart';
import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

part 'new_car_owner_provider.chopper.dart';

@ChopperApi()
abstract class NewCarOwnerProvider extends ChopperService {
  @factoryMethod
  static NewCarOwnerProvider create(ChopperClient client) {
    return _$NewCarOwnerProvider(client);
  }

  @Get(
    path: '/person-list',
    headers: <String, String>{
      'x-apikey': '795ad45e4dc222bc0e5bd1c163bb885e3635e',
    },
  )
  Future<Response<NewCarOwnerModel>> getOwners();
}
