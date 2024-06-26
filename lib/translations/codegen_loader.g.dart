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
  "car_year": "Year of production: {}",
  "car_owner": "Owner: {firstName} {lastName}",
  "car_owner_unavailable": "Owner: Unavailable",
  "new_car_brand_title": "Add new car",
  "new_car_brand": "Brand",
  "new_car_model": "Model",
  "new_car_color": "Color",
  "new_car_year": "Year of production",
  "new_car_registration": "Registration",
  "new_car_owner": "Owner",
  "new_car_pick_owner": "Pick owner",
  "new_car_pick_lat_lng": "Pick location",
  "new_car_pick_color": "Pick color",
  "new_car_lat": "Latitude",
  "new_car_lng": "Length",
  "new_car_add": "Save",
  "owners_list_empty": "No owners found",
  "example": "e.g. {}",
  "map_picker_address": "Address",
  "input_error": "Empty input",
  "pick": "Pick",
  "unique_error": "Value of {} must be unique",
  "required_error": "Field {} is required",
  "unknown_error": "Unknown error occured in {}",
  "fetch_data_error": "Error while fetching data",
  "owner_not_found": "Owner not found",
  "wrong_date_format": "Wrong date format"
};
static const Map<String,dynamic> pl = {
  "car_list_title": "Samochody",
  "car_brand": "Marka: {}",
  "car_model": "Model: {}",
  "car_color": "Lakier",
  "car_registration": "Rejestracja: {}",
  "car_list_error": "Nie można pobrać listy samochodów",
  "car_list_empty": "Brak samochodów",
  "car_details_title": "Szczegóły samochodów",
  "car_localization": "Lokalizacja samochodów",
  "car_basic_data": "Dane podstawowe",
  "car_details_data": "Dane szczegółowe",
  "car_year": "Rok produkcji: {}",
  "car_owner": "Właściciel: {firstName} {lastName}",
  "car_owner_unavailable": "Właściciel: Nie dostępny",
  "new_car_brand_title": "Dodaj nowy samochodów",
  "new_car_brand": "Marka",
  "new_car_model": "Model",
  "new_car_color": "Kolor",
  "new_car_year": "Rok produkcji",
  "new_car_registration": "Rejestracja",
  "new_car_owner": "Właściciel",
  "new_car_pick_owner": "Wybierz właściciela",
  "new_car_pick_lat_lng": "Wybierz lokalizację",
  "new_car_pick_color": "Wybierz kolor",
  "new_car_lat": "Szerokość",
  "new_car_lng": "Długość",
  "new_car_add": "Zapisz",
  "owners_list_empty": "Brak właścicieli",
  "example": "np. {}",
  "map_picker_address": "Adres",
  "input_error": "Uzupełnij pole",
  "pick": "Wybierz",
  "unique_error": "Wartość {} musi być unikalna",
  "required_error": "Pole {} jest wymagane",
  "unknown_error": "Wystąpił nieznany błąd w polu {}",
  "fetch_data_error": "Wystąpił błąd podczas pobierania danych",
  "owner_not_found": "Nie znaleziono właściciela",
  "wrong_date_format": "Nieprawidłowy format daty"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "pl": pl};
}
