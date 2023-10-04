import 'package:cars_app/core/providers/car_app_provider.dart';
import 'package:cars_app/features/car_adding_view/data/dto/new_car_response_dto.dart';
import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

part 'new_car_provider.chopper.dart';

@LazySingleton(env: <String>[Environment.dev, Environment.prod])
@ChopperApi()
abstract class NewCarProvider extends ChopperService {
  @factoryMethod
  static NewCarProvider create(CarAppProvider provider) {
    return _$NewCarProvider(provider.client);
  }

  @Post(path: '/car-list')
  Future<Response<NewCarResponseDTO>> addNewCar(@Body() Map<String, dynamic> car);
}
