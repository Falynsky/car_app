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
  "car_list_title": "Cars",
  "car_brand": "Brand: {}",
  "car_model": "Model: {}",
  "car_color": "Paint",
  "car_registration": "Registration: {}",
  "car_list_error": "Error while loading car list",
  "car_list_empty": "No cars found",
  "car_details_title": "Car details",
  "car_localization": "Car localization",
  "car_basic_data": "Basic data",
  "car_details_data": "Details data",
  "car_year": "Year of production: {}"
};
static const Map<String,dynamic> pl = {
  "car_list_title": "Samochody",
  "car_brand": "Marka: {}",
  "car_model": "Model: {}",
  "car_color": "Lakier",
  "car_registration": "Rejestracja: {}",
  "car_list_error": "Nie można pobrać listy samochodów",
  "car_list_empty": "Brak samochodów",
  "car_details_title": "Szczegóły pojazdu",
  "car_localization": "Lokalizacja pojazdu",
  "car_basic_data": "Dane podstawowe",
  "car_details_data": "Dane szczegółowe",
  "car_year": "Rok produkcji: {}"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "pl": pl};
}
