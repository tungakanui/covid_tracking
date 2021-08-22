import 'package:freezed_annotation/freezed_annotation.dart';

part 'world_stats.freezed.dart';
part 'world_stats.g.dart';

@freezed
class WorldStatsModel with _$WorldStatsModel {
  const factory WorldStatsModel({
    int? updated,
    int? cases,
    int? todayCases,
    int? deaths,
    int? todayDeaths,
    int? recovered,
    int? active,
    int? critical,
    double? casesPerOneMillion,
    double? deathsPerOneMillion,
    int? tests,
    double? testsPerOneMillion,
    int? affectedCountries,
  }) = _WorldStatsModel;

  factory WorldStatsModel.fromJson(Map<String, dynamic> json) =>
      _$WorldStatsModelFromJson(json);
}
