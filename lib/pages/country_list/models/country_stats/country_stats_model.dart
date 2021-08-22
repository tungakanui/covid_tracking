import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_stats_model.freezed.dart';
part 'country_stats_model.g.dart';

@freezed
class CountryStatsModel with _$CountryStatsModel {
  const factory CountryStatsModel({
    int? updated,
    String? country,
    CountryInfo? countryInfo,
    int? cases,
    int? todayCases,
    int? deaths,
    int? todayDeaths,
    int? recovered,
    int? todayRecovered,
    int? active,
    int? critical,
    double? casesPerOneMillion,
    double? deathsPerOneMillion,
    int? tests,
    double? testsPerOneMillion,
    int? population,
    String? continent,
    double? oneCasePerPeople,
    double? oneDeathPerPeople,
    double? oneTestPerPeople,
    double? activePerOneMillion,
    double? recoveredPerOneMillion,
    double? criticalPerOneMillion,
  }) = _CountryStatsModel;

  factory CountryStatsModel.fromJson(Map<String, dynamic> json) => _$CountryStatsModelFromJson(json);
}

@freezed
class CountryInfo with _$CountryInfo {
  const factory CountryInfo({
    int? id,
    String? iso2,
    String? iso3,
    double? lat,
    double? long,
    String? flag,
  }) = _CountryInfo;

  factory CountryInfo.fromJson(Map<String, dynamic> json) => _$CountryInfoFromJson(json);
}
