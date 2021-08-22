// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryStatsModel _$_$_CountryStatsModelFromJson(Map<String, dynamic> json) {
  return _$_CountryStatsModel(
    updated: json['updated'] as int?,
    country: json['country'] as String?,
    countryInfo: json['countryInfo'] == null
        ? null
        : CountryInfo.fromJson(json['countryInfo'] as Map<String, dynamic>),
    cases: json['cases'] as int?,
    todayCases: json['todayCases'] as int?,
    deaths: json['deaths'] as int?,
    todayDeaths: json['todayDeaths'] as int?,
    recovered: json['recovered'] as int?,
    todayRecovered: json['todayRecovered'] as int?,
    active: json['active'] as int?,
    critical: json['critical'] as int?,
    casesPerOneMillion: (json['casesPerOneMillion'] as num?)?.toDouble(),
    deathsPerOneMillion: (json['deathsPerOneMillion'] as num?)?.toDouble(),
    tests: json['tests'] as int?,
    testsPerOneMillion: (json['testsPerOneMillion'] as num?)?.toDouble(),
    population: json['population'] as int?,
    continent: json['continent'] as String?,
    oneCasePerPeople: (json['oneCasePerPeople'] as num?)?.toDouble(),
    oneDeathPerPeople: (json['oneDeathPerPeople'] as num?)?.toDouble(),
    oneTestPerPeople: (json['oneTestPerPeople'] as num?)?.toDouble(),
    activePerOneMillion: (json['activePerOneMillion'] as num?)?.toDouble(),
    recoveredPerOneMillion:
        (json['recoveredPerOneMillion'] as num?)?.toDouble(),
    criticalPerOneMillion: (json['criticalPerOneMillion'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_CountryStatsModelToJson(
        _$_CountryStatsModel instance) =>
    <String, dynamic>{
      'updated': instance.updated,
      'country': instance.country,
      'countryInfo': instance.countryInfo,
      'cases': instance.cases,
      'todayCases': instance.todayCases,
      'deaths': instance.deaths,
      'todayDeaths': instance.todayDeaths,
      'recovered': instance.recovered,
      'todayRecovered': instance.todayRecovered,
      'active': instance.active,
      'critical': instance.critical,
      'casesPerOneMillion': instance.casesPerOneMillion,
      'deathsPerOneMillion': instance.deathsPerOneMillion,
      'tests': instance.tests,
      'testsPerOneMillion': instance.testsPerOneMillion,
      'population': instance.population,
      'continent': instance.continent,
      'oneCasePerPeople': instance.oneCasePerPeople,
      'oneDeathPerPeople': instance.oneDeathPerPeople,
      'oneTestPerPeople': instance.oneTestPerPeople,
      'activePerOneMillion': instance.activePerOneMillion,
      'recoveredPerOneMillion': instance.recoveredPerOneMillion,
      'criticalPerOneMillion': instance.criticalPerOneMillion,
    };

_$_CountryInfo _$_$_CountryInfoFromJson(Map<String, dynamic> json) {
  return _$_CountryInfo(
    id: json['id'] as int?,
    iso2: json['iso2'] as String?,
    iso3: json['iso3'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    long: (json['long'] as num?)?.toDouble(),
    flag: json['flag'] as String?,
  );
}

Map<String, dynamic> _$_$_CountryInfoToJson(_$_CountryInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'iso2': instance.iso2,
      'iso3': instance.iso3,
      'lat': instance.lat,
      'long': instance.long,
      'flag': instance.flag,
    };
