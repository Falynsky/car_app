import 'package:cars_app/core/const/http_consts.dart';
import 'package:cars_app/core/utils/json_to_type_converter.dart';
import 'package:cars_app/features/car_list/data/dto/car_dto.dart';
import 'package:chopper/chopper.dart';

part 'car_list_provider.chopper.dart';

@ChopperApi()
abstract class CarListProvider extends ChopperService {
  static CarListProvider create() {
    final ChopperClient client = ChopperClient(
      baseUrl: Uri.parse(HttpConsts.BASE_URL),
      services: <ChopperService>[
        _$CarListProvider(),
      ],
      converter: const JsonToTypeConverter(),
    );
    return _$CarListProvider(client);
  }

  @Get(
    path: '/car-list',
    headers: <String, String>{
      'x-apikey': '795ad45e4dc222bc0e5bd1c163bb885e3635e',
    },
  )
  Future<Response<List<CarDTO>>> getCars();
}
