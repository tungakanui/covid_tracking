// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'world_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorldStatsModel _$_$_WorldStatsModelFromJson(Map<String, dynamic> json) {
  return _$_WorldStatsModel(
    updated: json['updated'] as int?,
    cases: json['cases'] as int?,
    todayCases: json['todayCases'] as int?,
    deaths: json['deaths'] as int?,
    todayDeaths: json['todayDeaths'] as int?,
    recovered: json['recovered'] as int?,
    active: json['active'] as int?,
    critical: json['critical'] as int?,
    casesPerOneMillion: (json['casesPerOneMillion'] as num?)?.toDouble(),
    deathsPerOneMillion: (json['deathsPerOneMillion'] as num?)?.toDouble(),
    tests: json['tests'] as int?,
    testsPerOneMillion: (json['testsPerOneMillion'] as num?)?.toDouble(),
    affectedCountries: json['affectedCountries'] as int?,
  );
}

Map<String, dynamic> _$_$_WorldStatsModelToJson(_$_WorldStatsModel instance) =>
    <String, dynamic>{
      'updated': instance.updated,
      'cases': instance.cases,
      'todayCases': instance.todayCases,
      'deaths': instance.deaths,
      'todayDeaths': instance.todayDeaths,
      'recovered': instance.recovered,
      'active': instance.active,
      'critical': instance.critical,
      'casesPerOneMillion': instance.casesPerOneMillion,
      'deathsPerOneMillion': instance.deathsPerOneMillion,
      'tests': instance.tests,
      'testsPerOneMillion': instance.testsPerOneMillion,
      'affectedCountries': instance.affectedCountries,
    };
