import 'dart:convert';

import 'package:covid_tracking_app/pages/country_list/models/country_stats/country_stats_model.dart';
import 'package:covid_tracking_app/pages/search_country/models/country_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SearchCountryRepository {
  Future<List<CountryCode>> getCountriesInfo();
}

class SearchCountryRepositoryImpl extends SearchCountryRepository {
  @override
  Future<List<CountryCode>> getCountriesInfo() async {
    String data = await DefaultAssetBundle.of(Get.context!) //TODO
        .loadString("assets/json/countries.json");
    List<dynamic> jsonData = json.decode(data);
    return jsonData.map((e) => CountryCode.fromJson(e)).toList();
  }
}
