// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "car_list_title": "Car list",
  "car_brand": "Brand: {}",
  "car_model": "Model: {}",
  "car_color": "Color: {}",
  "car_registration": "Registration: {}"
};
static const Map<String,dynamic> pl = {
  "car_list_title": "Lista samochodów",
  "car_brand": "Marka: {}",
  "car_model": "Model: {}",
  "car_color": "Kolor: {}",
  "car_registration": "Nr. Rejestracji: {}"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "pl": pl};
}
