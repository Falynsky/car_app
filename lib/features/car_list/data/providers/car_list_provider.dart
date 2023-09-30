import 'package:cars_app/core/providers/car_app_provider.dart';
import 'package:cars_app/features/car_list/data/dto/car_dto.dart';
import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';
import 'package:mocktail/mocktail.dart';

part 'car_list_provider.chopper.dart';

@LazySingleton(env: <String>[Environment.dev])
@ChopperApi()
abstract class CarListProvider extends ChopperService {
  @factoryMethod
  static CarListProvider create(CarAppProvider provider) {
    return _$CarListProvider(provider.client);
  }

  @Get(
    path: '/car-list',
    headers: <String, String>{
      'x-apikey': '795ad45e4dc222bc0e5bd1c163bb885e3635e',
    },
  )
  Future<Response<List<CarDTO>>> getCars();
}

@LazySingleton(
  as: CarListProvider,
  env: <String>[Environment.test],
)
class CarListProviderMock extends Mock implements CarListProvider {}
