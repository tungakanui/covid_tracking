// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'world_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorldStatsModel _$WorldStatsModelFromJson(Map<String, dynamic> json) {
  return _WorldStatsModel.fromJson(json);
}

/// @nodoc
class _$WorldStatsModelTearOff {
  const _$WorldStatsModelTearOff();

  _WorldStatsModel call(
      {int? updated,
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
      int? affectedCountries}) {
    return _WorldStatsModel(
      updated: updated,
      cases: cases,
      todayCases: todayCases,
      deaths: deaths,
      todayDeaths: todayDeaths,
      recovered: recovered,
      active: active,
      critical: critical,
      casesPerOneMillion: casesPerOneMillion,
      deathsPerOneMillion: deathsPerOneMillion,
      tests: tests,
      testsPerOneMillion: testsPerOneMillion,
      affectedCountries: affectedCountries,
    );
  }

  WorldStatsModel fromJson(Map<String, Object> json) {
    return WorldStatsModel.fromJson(json);
  }
}

/// @nodoc
const $WorldStatsModel = _$WorldStatsModelTearOff();

/// @nodoc
mixin _$WorldStatsModel {
  int? get updated => throw _privateConstructorUsedError;
  int? get cases => throw _privateConstructorUsedError;
  int? get todayCases => throw _privateConstructorUsedError;
  int? get deaths => throw _privateConstructorUsedError;
  int? get todayDeaths => throw _privateConstructorUsedError;
  int? get recovered => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  int? get critical => throw _privateConstructorUsedError;
  double? get casesPerOneMillion => throw _privateConstructorUsedError;
  double? get deathsPerOneMillion => throw _privateConstructorUsedError;
  int? get tests => throw _privateConstructorUsedError;
  double? get testsPerOneMillion => throw _privateConstructorUsedError;
  int? get affectedCountries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorldStatsModelCopyWith<WorldStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldStatsModelCopyWith<$Res> {
  factory $WorldStatsModelCopyWith(
          WorldStatsModel value, $Res Function(WorldStatsModel) then) =
      _$WorldStatsModelCopyWithImpl<$Res>;
  $Res call(
      {int? updated,
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
      int? affectedCountries});
}

/// @nodoc
class _$WorldStatsModelCopyWithImpl<$Res>
    implements $WorldStatsModelCopyWith<$Res> {
  _$WorldStatsModelCopyWithImpl(this._value, this._then);

  final WorldStatsModel _value;
  // ignore: unused_field
  final $Res Function(WorldStatsModel) _then;

  @override
  $Res call({
    Object? updated = freezed,
    Object? cases = freezed,
    Object? todayCases = freezed,
    Object? deaths = freezed,
    Object? todayDeaths = freezed,
    Object? recovered = freezed,
    Object? active = freezed,
    Object? critical = freezed,
    Object? casesPerOneMillion = freezed,
    Object? deathsPerOneMillion = freezed,
    Object? tests = freezed,
    Object? testsPerOneMillion = freezed,
    Object? affectedCountries = freezed,
  }) {
    return _then(_value.copyWith(
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int?,
      cases: cases == freezed
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as int?,
      todayCases: todayCases == freezed
          ? _value.todayCases
          : todayCases // ignore: cast_nullable_to_non_nullable
              as int?,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int?,
      todayDeaths: todayDeaths == freezed
          ? _value.todayDeaths
          : todayDeaths // ignore: cast_nullable_to_non_nullable
              as int?,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as int?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      critical: critical == freezed
          ? _value.critical
          : critical // ignore: cast_nullable_to_non_nullable
              as int?,
      casesPerOneMillion: casesPerOneMillion == freezed
          ? _value.casesPerOneMillion
          : casesPerOneMillion // ignore: cast_nullable_to_non_nullable
              as double?,
      deathsPerOneMillion: deathsPerOneMillion == freezed
          ? _value.deathsPerOneMillion
          : deathsPerOneMillion // ignore: cast_nullable_to_non_nullable
              as double?,
      tests: tests == freezed
          ? _value.tests
          : tests // ignore: cast_nullable_to_non_nullable
              as int?,
      testsPerOneMillion: testsPerOneMillion == freezed
          ? _value.testsPerOneMillion
          : testsPerOneMillion // ignore: cast_nullable_to_non_nullable
              as double?,
      affectedCountries: affectedCountries == freezed
          ? _value.affectedCountries
          : affectedCountries // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$WorldStatsModelCopyWith<$Res>
    implements $WorldStatsModelCopyWith<$Res> {
  factory _$WorldStatsModelCopyWith(
          _WorldStatsModel value, $Res Function(_WorldStatsModel) then) =
      __$WorldStatsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? updated,
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
      int? affectedCountries});
}

/// @nodoc
class __$WorldStatsModelCopyWithImpl<$Res>
    extends _$WorldStatsModelCopyWithImpl<$Res>
    implements _$WorldStatsModelCopyWith<$Res> {
  __$WorldStatsModelCopyWithImpl(
      _WorldStatsModel _value, $Res Function(_WorldStatsModel) _then)
      : super(_value, (v) => _then(v as _WorldStatsModel));

  @override
  _WorldStatsModel get _value => super._value as _WorldStatsModel;

  @override
  $Res call({
    Object? updated = freezed,
    Object? cases = freezed,
    Object? todayCases = freezed,
    Object? deaths = freezed,
    Object? todayDeaths = freezed,
    Object? recovered = freezed,
    Object? active = freezed,
    Object? critical = freezed,
    Object? casesPerOneMillion = freezed,
    Object? deathsPerOneMillion = freezed,
    Object? tests = freezed,
    Object? testsPerOneMillion = freezed,
    Object? affectedCountries = freezed,
  }) {
    return _then(_WorldStatsModel(
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as int?,
      cases: cases == freezed
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as int?,
      todayCases: todayCases == freezed
          ? _value.todayCases
          : todayCases // ignore: cast_nullable_to_non_nullable
              as int?,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int?,
      todayDeaths: todayDeaths == freezed
          ? _value.todayDeaths
          : todayDeaths // ignore: cast_nullable_to_non_nullable
              as int?,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as int?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      critical: critical == freezed
          ? _value.critical
          : critical // ignore: cast_nullable_to_non_nullable
              as int?,
      casesPerOneMillion: casesPerOneMillion == freezed
          ? _value.casesPerOneMillion
          : casesPerOneMillion // ignore: cast_nullable_to_non_nullable
              as double?,
      deathsPerOneMillion: deathsPerOneMillion == freezed
          ? _value.deathsPerOneMillion
          : deathsPerOneMillion // ignore: cast_nullable_to_non_nullable
              as double?,
      tests: tests == freezed
          ? _value.tests
          : tests // ignore: cast_nullable_to_non_nullable
              as int?,
      testsPerOneMillion: testsPerOneMillion == freezed
          ? _value.testsPerOneMillion
          : testsPerOneMillion // ignore: cast_nullable_to_non_nullable
              as double?,
      affectedCountries: affectedCountries == freezed
          ? _value.affectedCountries
          : affectedCountries // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorldStatsModel implements _WorldStatsModel {
  const _$_WorldStatsModel(
      {this.updated,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.affectedCountries});

  factory _$_WorldStatsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WorldStatsModelFromJson(json);

  @override
  final int? updated;
  @override
  final int? cases;
  @override
  final int? todayCases;
  @override
  final int? deaths;
  @override
  final int? todayDeaths;
  @override
  final int? recovered;
  @override
  final int? active;
  @override
  final int? critical;
  @override
  final double? casesPerOneMillion;
  @override
  final double? deathsPerOneMillion;
  @override
  final int? tests;
  @override
  final double? testsPerOneMillion;
  @override
  final int? affectedCountries;

  @override
  String toString() {
    return 'WorldStatsModel(updated: $updated, cases: $cases, todayCases: $todayCases, deaths: $deaths, todayDeaths: $todayDeaths, recovered: $recovered, active: $active, critical: $critical, casesPerOneMillion: $casesPerOneMillion, deathsPerOneMillion: $deathsPerOneMillion, tests: $tests, testsPerOneMillion: $testsPerOneMillion, affectedCountries: $affectedCountries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorldStatsModel &&
            (identical(other.updated, updated) ||
                const DeepCollectionEquality()
                    .equals(other.updated, updated)) &&
            (identical(other.cases, cases) ||
                const DeepCollectionEquality().equals(other.cases, cases)) &&
            (identical(other.todayCases, todayCases) ||
                const DeepCollectionEquality()
                    .equals(other.todayCases, todayCases)) &&
            (identical(other.deaths, deaths) ||
                const DeepCollectionEquality().equals(other.deaths, deaths)) &&
            (identical(other.todayDeaths, todayDeaths) ||
                const DeepCollectionEquality()
                    .equals(other.todayDeaths, todayDeaths)) &&
            (identical(other.recovered, recovered) ||
                const DeepCollectionEquality()
                    .equals(other.recovered, recovered)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.critical, critical) ||
                const DeepCollectionEquality()
                    .equals(other.critical, critical)) &&
            (identical(other.casesPerOneMillion, casesPerOneMillion) ||
                const DeepCollectionEquality()
                    .equals(other.casesPerOneMillion, casesPerOneMillion)) &&
            (identical(other.deathsPerOneMillion, deathsPerOneMillion) ||
                const DeepCollectionEquality()
                    .equals(other.deathsPerOneMillion, deathsPerOneMillion)) &&
            (identical(other.tests, tests) ||
                const DeepCollectionEquality().equals(other.tests, tests)) &&
            (identical(other.testsPerOneMillion, testsPerOneMillion) ||
                const DeepCollectionEquality()
                    .equals(other.testsPerOneMillion, testsPerOneMillion)) &&
            (identical(other.affectedCountries, affectedCountries) ||
                const DeepCollectionEquality()
                    .equals(other.affectedCountries, affectedCountries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updated) ^
      const DeepCollectionEquality().hash(cases) ^
      const DeepCollectionEquality().hash(todayCases) ^
      const DeepCollectionEquality().hash(deaths) ^
      const DeepCollectionEquality().hash(todayDeaths) ^
      const DeepCollectionEquality().hash(recovered) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(critical) ^
      const DeepCollectionEquality().hash(casesPerOneMillion) ^
      const DeepCollectionEquality().hash(deathsPerOneMillion) ^
      const DeepCollectionEquality().hash(tests) ^
      const DeepCollectionEquality().hash(testsPerOneMillion) ^
      const DeepCollectionEquality().hash(affectedCountries);

  @JsonKey(ignore: true)
  @override
  _$WorldStatsModelCopyWith<_WorldStatsModel> get copyWith =>
      __$WorldStatsModelCopyWithImpl<_WorldStatsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorldStatsModelToJson(this);
  }
}

abstract class _WorldStatsModel implements WorldStatsModel {
  const factory _WorldStatsModel(
      {int? updated,
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
      int? affectedCountries}) = _$_WorldStatsModel;

  factory _WorldStatsModel.fromJson(Map<String, dynamic> json) =
      _$_WorldStatsModel.fromJson;

  @override
  int? get updated => throw _privateConstructorUsedError;
  @override
  int? get cases => throw _privateConstructorUsedError;
  @override
  int? get todayCases => throw _privateConstructorUsedError;
  @override
  int? get deaths => throw _privateConstructorUsedError;
  @override
  int? get todayDeaths => throw _privateConstructorUsedError;
  @override
  int? get recovered => throw _privateConstructorUsedError;
  @override
  int? get active => throw _privateConstructorUsedError;
  @override
  int? get critical => throw _privateConstructorUsedError;
  @override
  double? get casesPerOneMillion => throw _privateConstructorUsedError;
  @override
  double? get deathsPerOneMillion => throw _privateConstructorUsedError;
  @override
  int? get tests => throw _privateConstructorUsedError;
  @override
  double? get testsPerOneMillion => throw _privateConstructorUsedError;
  @override
  int? get affectedCountries => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorldStatsModelCopyWith<_WorldStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
