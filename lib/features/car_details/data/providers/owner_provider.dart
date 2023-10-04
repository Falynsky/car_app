import 'package:cars_app/core/providers/car_app_provider.dart';
import 'package:cars_app/features/car_details/data/dto/owner_dto.dart';
import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

part 'owner_provider.chopper.dart';

@LazySingleton(env: <String>[Environment.dev, Environment.prod])
@ChopperApi()
abstract class OwnerProvider extends ChopperService {
  @factoryMethod
  static OwnerProvider create(CarAppProvider provider) {
    return _$OwnerProvider(provider.client);
  }

  @Get(path: '/person-list')
  Future<Response<List<OwnerDTO>>> getOwners();
}
