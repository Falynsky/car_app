import 'package:cars_app/core/const/http_consts.dart';
import 'package:cars_app/core/utils/custom_error_converter.dart';
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
      errorConverter: CustomErrorConverter(),
      interceptors: <RequestInterceptor>[
        const HeadersInterceptor(
          <String, String>{
            'x-apikey': '795ad45e4dc222bc0e5bd1c163bb885e3635e',
          },
        ),
      ],
    );
    return _$CarAppProvider(client);
  }
}
