import 'package:cars_app/core/const/http_consts.dart';
import 'package:cars_app/core/utils/json_to_type_converter.dart';
import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

part 'car_app_provider.chopper.dart';

@lazySingleton
@ChopperApi()
abstract class CarAppProvider extends ChopperService {
  @factoryMethod
  static CarAppProvider create() {
    final ChopperClient client = ChopperClient(
      baseUrl: Uri.parse(HttpConsts.BASE_URL),
      services: <ChopperService>[
        _$CarAppProvider(),
      ],
      converter: const JsonToTypeConverter(),
    );
    return _$CarAppProvider(client);
  }
}
