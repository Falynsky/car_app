import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/error/response_code_recognizer.dart';
import 'package:cars_app/features/car_adding_view/data/dto/new_car_dto.dart';
import 'package:cars_app/features/car_adding_view/data/dto/new_car_response_dto.dart';
import 'package:cars_app/features/car_adding_view/data/mappers/new_car_model_mapper.dart';
import 'package:cars_app/features/car_adding_view/data/mappers/new_car_response_model_mapper.dart';
import 'package:cars_app/features/car_adding_view/data/providers/new_car_provider.dart';
import 'package:cars_app/features/car_adding_view/domain/models/error_model.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_model.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_response_model.dart';
import 'package:cars_app/features/car_adding_view/domain/repositories/new_car_repository.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(as: NewCarRepository)
class RemoteNewCarRepository implements NewCarRepository {
  final NewCarProvider newCarProvider;
  final NewCarModelMapper mapper;
  final NewCarResponseModelMapper responseMapper;

  RemoteNewCarRepository({
    required this.newCarProvider,
    required this.mapper,
    required this.responseMapper,
  });

  @override
  Future<Either<Failure, bool>> addNewCar(NewCarModel car) async {
    try {
      final NewCarDTO dto = mapper.toDTO(car);
      final Map<String, Object?> parsedDTO = dto.toJson();
      final Response<NewCarResponseDTO> response = await newCarProvider.addNewCar(parsedDTO);
      if (response.isSuccessful) {
        return const Right<Failure, bool>(true);
      }
      final NewCarResponseDTO value = response.error as NewCarResponseDTO;
      final NewCarResponseModel model = responseMapper.toModel(value);
      final List<ErrorModel> errors = model.errors ?? <ErrorModel>[];
      if (errors.isNotEmpty) {
        final ErrorModel firstError = errors.first;
        final List<String> messages = firstError.message;
        final String errorMessage = ResponseFieldErrorMessageRecognizer.getErrorMessage(
          messages.last,
          firstError.field,
        );
        return Left<Failure, bool>(ServerFailure(errorMessage));
      }
      return serverFailure();
    } on Exception {
      return serverFailure();
    }
  }

  Left<Failure, bool> serverFailure() {
    return Left<Failure, bool>(ServerFailure(LocaleKeys.fetch_data_error.tr()));
  }
}
