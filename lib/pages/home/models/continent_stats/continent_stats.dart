import 'package:freezed_annotation/freezed_annotation.dart';

part 'continent_stats.freezed.dart';
part 'continent_stats.g.dart';

@freezed
class ContinentStatsModel with _$ContinentStatsModel {
  const factory ContinentStatsModel({
    int? updated,
    int? cases,
    int? todayCases,
    int? deaths,
    int? todayDeaths,
    int? recovered,
    int? active,
    int? critical,
    String? continent,
    double? casesPerOneMillion,
    double? deathsPerOneMillion,
    int? tests,
    double? testsPerOneMillion,
    int? population,
    double? activePerOneMillion,
    double? recoveredPerOneMillion,
    double? criticalPerOneMillion,
    List<String>? countries,
  }) = _ContinentStatsModel;

  factory ContinentStatsModel.fromJson(Map<String, dynamic> json) =>
      _$ContinentStatsModelFromJson(json);
}
