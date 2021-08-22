import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'historical_country_model.freezed.dart';
part 'historical_country_model.g.dart';

@freezed
class HistoricalCountryModel with _$HistoricalCountryModel {
  const factory HistoricalCountryModel({
    String? country,
    List<String>? province,
    Timeline? timeline,
  }) = _HistoricalCountryModel;

  factory HistoricalCountryModel.fromJson(Map<String, dynamic> json) => _$HistoricalCountryModelFromJson(json);
}

@freezed
class Timeline with _$Timeline {
  const factory Timeline({
    Map<String, int>? cases,
    Map<String, int>? deaths,
    Map<String, int>? recovered,
  }) = _Timeline;

  factory Timeline.fromJson(Map<String, dynamic> json) => _$TimelineFromJson(json);
}
