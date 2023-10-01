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
  "car_color": "Body color:",
  "car_registration": "Registration: {}",
  "car_list_error": "Error while loading car list",
  "car_list_empty": "No cars found"
};
static const Map<String,dynamic> pl = {
  "car_list_title": "Lista samochodów",
  "car_brand": "Marka: {}",
  "car_model": "Model: {}",
  "car_color": "Kolor nawozia:",
  "car_registration": "Nr. Rejestracji: {}",
  "car_list_error": "Nie można pobrać listy samochodów",
  "car_list_empty": "Brak samochodów"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "pl": pl};
}
