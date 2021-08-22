// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'historical_country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoricalCountryModel _$HistoricalCountryModelFromJson(
    Map<String, dynamic> json) {
  return _HistoricalCountryModel.fromJson(json);
}

/// @nodoc
class _$HistoricalCountryModelTearOff {
  const _$HistoricalCountryModelTearOff();

  _HistoricalCountryModel call(
      {String? country, List<String>? province, Timeline? timeline}) {
    return _HistoricalCountryModel(
      country: country,
      province: province,
      timeline: timeline,
    );
  }

  HistoricalCountryModel fromJson(Map<String, Object> json) {
    return HistoricalCountryModel.fromJson(json);
  }
}

/// @nodoc
const $HistoricalCountryModel = _$HistoricalCountryModelTearOff();

/// @nodoc
mixin _$HistoricalCountryModel {
  String? get country => throw _privateConstructorUsedError;
  List<String>? get province => throw _privateConstructorUsedError;
  Timeline? get timeline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoricalCountryModelCopyWith<HistoricalCountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoricalCountryModelCopyWith<$Res> {
  factory $HistoricalCountryModelCopyWith(HistoricalCountryModel value,
          $Res Function(HistoricalCountryModel) then) =
      _$HistoricalCountryModelCopyWithImpl<$Res>;
  $Res call({String? country, List<String>? province, Timeline? timeline});

  $TimelineCopyWith<$Res>? get timeline;
}

/// @nodoc
class _$HistoricalCountryModelCopyWithImpl<$Res>
    implements $HistoricalCountryModelCopyWith<$Res> {
  _$HistoricalCountryModelCopyWithImpl(this._value, this._then);

  final HistoricalCountryModel _value;
  // ignore: unused_field
  final $Res Function(HistoricalCountryModel) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? province = freezed,
    Object? timeline = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      timeline: timeline == freezed
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as Timeline?,
    ));
  }

  @override
  $TimelineCopyWith<$Res>? get timeline {
    if (_value.timeline == null) {
      return null;
    }

    return $TimelineCopyWith<$Res>(_value.timeline!, (value) {
      return _then(_value.copyWith(timeline: value));
    });
  }
}

/// @nodoc
abstract class _$HistoricalCountryModelCopyWith<$Res>
    implements $HistoricalCountryModelCopyWith<$Res> {
  factory _$HistoricalCountryModelCopyWith(_HistoricalCountryModel value,
          $Res Function(_HistoricalCountryModel) then) =
      __$HistoricalCountryModelCopyWithImpl<$Res>;
  @override
  $Res call({String? country, List<String>? province, Timeline? timeline});

  @override
  $TimelineCopyWith<$Res>? get timeline;
}

/// @nodoc
class __$HistoricalCountryModelCopyWithImpl<$Res>
    extends _$HistoricalCountryModelCopyWithImpl<$Res>
    implements _$HistoricalCountryModelCopyWith<$Res> {
  __$HistoricalCountryModelCopyWithImpl(_HistoricalCountryModel _value,
      $Res Function(_HistoricalCountryModel) _then)
      : super(_value, (v) => _then(v as _HistoricalCountryModel));

  @override
  _HistoricalCountryModel get _value => super._value as _HistoricalCountryModel;

  @override
  $Res call({
    Object? country = freezed,
    Object? province = freezed,
    Object? timeline = freezed,
  }) {
    return _then(_HistoricalCountryModel(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      timeline: timeline == freezed
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as Timeline?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoricalCountryModel implements _HistoricalCountryModel {
  const _$_HistoricalCountryModel({this.country, this.province, this.timeline});

  factory _$_HistoricalCountryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_HistoricalCountryModelFromJson(json);

  @override
  final String? country;
  @override
  final List<String>? province;
  @override
  final Timeline? timeline;

  @override
  String toString() {
    return 'HistoricalCountryModel(country: $country, province: $province, timeline: $timeline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HistoricalCountryModel &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.timeline, timeline) ||
                const DeepCollectionEquality()
                    .equals(other.timeline, timeline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(timeline);

  @JsonKey(ignore: true)
  @override
  _$HistoricalCountryModelCopyWith<_HistoricalCountryModel> get copyWith =>
      __$HistoricalCountryModelCopyWithImpl<_HistoricalCountryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HistoricalCountryModelToJson(this);
  }
}

abstract class _HistoricalCountryModel implements HistoricalCountryModel {
  const factory _HistoricalCountryModel(
      {String? country,
      List<String>? province,
      Timeline? timeline}) = _$_HistoricalCountryModel;

  factory _HistoricalCountryModel.fromJson(Map<String, dynamic> json) =
      _$_HistoricalCountryModel.fromJson;

  @override
  String? get country => throw _privateConstructorUsedError;
  @override
  List<String>? get province => throw _privateConstructorUsedError;
  @override
  Timeline? get timeline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HistoricalCountryModelCopyWith<_HistoricalCountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Timeline _$TimelineFromJson(Map<String, dynamic> json) {
  return _Timeline.fromJson(json);
}

/// @nodoc
class _$TimelineTearOff {
  const _$TimelineTearOff();

  _Timeline call(
      {Map<String, int>? cases,
      Map<String, int>? deaths,
      Map<String, int>? recovered}) {
    return _Timeline(
      cases: cases,
      deaths: deaths,
      recovered: recovered,
    );
  }

  Timeline fromJson(Map<String, Object> json) {
    return Timeline.fromJson(json);
  }
}

/// @nodoc
const $Timeline = _$TimelineTearOff();

/// @nodoc
mixin _$Timeline {
  Map<String, int>? get cases => throw _privateConstructorUsedError;
  Map<String, int>? get deaths => throw _privateConstructorUsedError;
  Map<String, int>? get recovered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimelineCopyWith<Timeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineCopyWith<$Res> {
  factory $TimelineCopyWith(Timeline value, $Res Function(Timeline) then) =
      _$TimelineCopyWithImpl<$Res>;
  $Res call(
      {Map<String, int>? cases,
      Map<String, int>? deaths,
      Map<String, int>? recovered});
}

/// @nodoc
class _$TimelineCopyWithImpl<$Res> implements $TimelineCopyWith<$Res> {
  _$TimelineCopyWithImpl(this._value, this._then);

  final Timeline _value;
  // ignore: unused_field
  final $Res Function(Timeline) _then;

  @override
  $Res call({
    Object? cases = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
  }) {
    return _then(_value.copyWith(
      cases: cases == freezed
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ));
  }
}

/// @nodoc
abstract class _$TimelineCopyWith<$Res> implements $TimelineCopyWith<$Res> {
  factory _$TimelineCopyWith(_Timeline value, $Res Function(_Timeline) then) =
      __$TimelineCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, int>? cases,
      Map<String, int>? deaths,
      Map<String, int>? recovered});
}

/// @nodoc
class __$TimelineCopyWithImpl<$Res> extends _$TimelineCopyWithImpl<$Res>
    implements _$TimelineCopyWith<$Res> {
  __$TimelineCopyWithImpl(_Timeline _value, $Res Function(_Timeline) _then)
      : super(_value, (v) => _then(v as _Timeline));

  @override
  _Timeline get _value => super._value as _Timeline;

  @override
  $Res call({
    Object? cases = freezed,
    Object? deaths = freezed,
    Object? recovered = freezed,
  }) {
    return _then(_Timeline(
      cases: cases == freezed
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      deaths: deaths == freezed
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      recovered: recovered == freezed
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Timeline implements _Timeline {
  const _$_Timeline({this.cases, this.deaths, this.recovered});

  factory _$_Timeline.fromJson(Map<String, dynamic> json) =>
      _$_$_TimelineFromJson(json);

  @override
  final Map<String, int>? cases;
  @override
  final Map<String, int>? deaths;
  @override
  final Map<String, int>? recovered;

  @override
  String toString() {
    return 'Timeline(cases: $cases, deaths: $deaths, recovered: $recovered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Timeline &&
            (identical(other.cases, cases) ||
                const DeepCollectionEquality().equals(other.cases, cases)) &&
            (identical(other.deaths, deaths) ||
                const DeepCollectionEquality().equals(other.deaths, deaths)) &&
            (identical(other.recovered, recovered) ||
                const DeepCollectionEquality()
                    .equals(other.recovered, recovered)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cases) ^
      const DeepCollectionEquality().hash(deaths) ^
      const DeepCollectionEquality().hash(recovered);

  @JsonKey(ignore: true)
  @override
  _$TimelineCopyWith<_Timeline> get copyWith =>
      __$TimelineCopyWithImpl<_Timeline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimelineToJson(this);
  }
}

abstract class _Timeline implements Timeline {
  const factory _Timeline(
      {Map<String, int>? cases,
      Map<String, int>? deaths,
      Map<String, int>? recovered}) = _$_Timeline;

  factory _Timeline.fromJson(Map<String, dynamic> json) = _$_Timeline.fromJson;

  @override
  Map<String, int>? get cases => throw _privateConstructorUsedError;
  @override
  Map<String, int>? get deaths => throw _privateConstructorUsedError;
  @override
  Map<String, int>? get recovered => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TimelineCopyWith<_Timeline> get copyWith =>
      throw _privateConstructorUsedError;
}
