// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continent_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContinentStatsModel _$_$_ContinentStatsModelFromJson(
    Map<String, dynamic> json) {
  return _$_ContinentStatsModel(
    updated: json['updated'] as int?,
    cases: json['cases'] as int?,
    todayCases: json['todayCases'] as int?,
    deaths: json['deaths'] as int?,
    todayDeaths: json['todayDeaths'] as int?,
    recovered: json['recovered'] as int?,
    active: json['active'] as int?,
    critical: json['critical'] as int?,
    continent: json['continent'] as String?,
    casesPerOneMillion: (json['casesPerOneMillion'] as num?)?.toDouble(),
    deathsPerOneMillion: (json['deathsPerOneMillion'] as num?)?.toDouble(),
    tests: json['tests'] as int?,
    testsPerOneMillion: (json['testsPerOneMillion'] as num?)?.toDouble(),
    population: json['population'] as int?,
    activePerOneMillion: (json['activePerOneMillion'] as num?)?.toDouble(),
    recoveredPerOneMillion:
        (json['recoveredPerOneMillion'] as num?)?.toDouble(),
    criticalPerOneMillion: (json['criticalPerOneMillion'] as num?)?.toDouble(),
    countries:
        (json['countries'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_ContinentStatsModelToJson(
        _$_ContinentStatsModel instance) =>
    <String, dynamic>{
      'updated': instance.updated,
      'cases': instance.cases,
      'todayCases': instance.todayCases,
      'deaths': instance.deaths,
      'todayDeaths': instance.todayDeaths,
      'recovered': instance.recovered,
      'active': instance.active,
      'critical': instance.critical,
      'continent': instance.continent,
      'casesPerOneMillion': instance.casesPerOneMillion,
      'deathsPerOneMillion': instance.deathsPerOneMillion,
      'tests': instance.tests,
      'testsPerOneMillion': instance.testsPerOneMillion,
      'population': instance.population,
      'activePerOneMillion': instance.activePerOneMillion,
      'recoveredPerOneMillion': instance.recoveredPerOneMillion,
      'criticalPerOneMillion': instance.criticalPerOneMillion,
      'countries': instance.countries,
    };
