import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class ResponseFieldErrorMessageRecognizer {
  static String getErrorMessage(String code, String field) {
    final String fieldName = _getFieldName(field);
    switch (code) {
      case 'UNIQUE':
        return LocaleKeys.unique_error.tr(args: <String>[fieldName]);
      case 'REQUIRED':
        return LocaleKeys.required_error.tr(args: <String>[fieldName]);
      default:
        return LocaleKeys.unknown_error.tr(args: <String>[fieldName]);
    }
  }

  static String _getFieldName(String field) {
    switch (field) {
      case 'brand':
        return LocaleKeys.new_car_brand.tr();
      case 'model':
        return LocaleKeys.new_car_model.tr();
      case 'color':
        return LocaleKeys.new_car_color.tr();
      case 'registration':
        return LocaleKeys.new_car_registration.tr();
      case 'year':
        return LocaleKeys.new_car_year.tr();
      case 'ownerId':
        return LocaleKeys.new_car_owner.tr();
      case 'lat':
        return LocaleKeys.new_car_lat.tr();
      case 'lng':
        return LocaleKeys.new_car_lng.tr();
      default:
        return 'Unknown field';
    }
  }
}
