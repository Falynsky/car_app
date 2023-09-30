import 'package:cars_app/features/car_list/data/models/car_model.dart';
import 'package:chopper/chopper.dart';

part 'car_list_service.chopper.dart';

@ChopperApi()
abstract class CarListService extends ChopperService {
  static const String _baseUrl = 'https://iteorecruitment-591c.restdb.io/rest';

  static CarListService create() {
    final ChopperClient client = ChopperClient(
      baseUrl: Uri(path: _baseUrl),
      services: <ChopperService>[
        _$CarListService(),
      ],
      converter: const JsonConverter(),
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
