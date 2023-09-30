import 'package:cars_app/core/const/http_consts.dart';
import 'package:cars_app/core/utils/json_to_type_converter.dart';
import 'package:cars_app/features/car_list/data/models/car_model.dart';
import 'package:chopper/chopper.dart';

part 'car_list_service.chopper.dart';

@ChopperApi()
abstract class CarListService extends ChopperService {
  static CarListService create() {
    final ChopperClient client = ChopperClient(
      baseUrl: Uri.parse(HttpConsts.BASE_URL),
      services: <ChopperService>[
        _$CarListService(),
      ],
      converter: const JsonToTypeConverter(<Type, Function>{CarModel: CarModel.fromJson}),
    );
    return _$CarListService(client);
  }

  @Get(
    path: '/car-list',
    headers: <String, String>{
      'x-apikey': '795ad45e4dc222bc0e5bd1c163bb885e3635e',
    },
  )
  Future<Response<List<CarModel>>> getCars();
}
