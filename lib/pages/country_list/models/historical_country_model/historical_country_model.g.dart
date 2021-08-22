// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical_country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HistoricalCountryModel _$_$_HistoricalCountryModelFromJson(
    Map<String, dynamic> json) {
  return _$_HistoricalCountryModel(
    country: json['country'] as String?,
    province:
        (json['province'] as List<dynamic>?)?.map((e) => e as String).toList(),
    timeline: json['timeline'] == null
        ? null
        : Timeline.fromJson(json['timeline'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_HistoricalCountryModelToJson(
        _$_HistoricalCountryModel instance) =>
    <String, dynamic>{
      'country': instance.country,
      'province': instance.province,
      'timeline': instance.timeline,
    };

_$_Timeline _$_$_TimelineFromJson(Map<String, dynamic> json) {
  return _$_Timeline(
    cases: (json['cases'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    deaths: (json['deaths'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    recovered: (json['recovered'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
  );
}

Map<String, dynamic> _$_$_TimelineToJson(_$_Timeline instance) =>
    <String, dynamic>{
      'cases': instance.cases,
      'deaths': instance.deaths,
      'recovered': instance.recovered,
    };
