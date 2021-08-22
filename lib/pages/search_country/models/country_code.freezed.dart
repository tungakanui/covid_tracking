// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryCode _$CountryCodeFromJson(Map<String, dynamic> json) {
  return _CountryCode.fromJson(json);
}

/// @nodoc
class _$CountryCodeTearOff {
  const _$CountryCodeTearOff();

  _CountryCode call({String? name, String? alpha2Code, bool isVisible = true}) {
    return _CountryCode(
      name: name,
      alpha2Code: alpha2Code,
      isVisible: isVisible,
    );
  }

  CountryCode fromJson(Map<String, Object> json) {
    return CountryCode.fromJson(json);
  }
}

/// @nodoc
const $CountryCode = _$CountryCodeTearOff();

/// @nodoc
mixin _$CountryCode {
  String? get name => throw _privateConstructorUsedError;
  String? get alpha2Code => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCodeCopyWith<CountryCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCodeCopyWith<$Res> {
  factory $CountryCodeCopyWith(
          CountryCode value, $Res Function(CountryCode) then) =
      _$CountryCodeCopyWithImpl<$Res>;
  $Res call({String? name, String? alpha2Code, bool isVisible});
}

/// @nodoc
class _$CountryCodeCopyWithImpl<$Res> implements $CountryCodeCopyWith<$Res> {
  _$CountryCodeCopyWithImpl(this._value, this._then);

  final CountryCode _value;
  // ignore: unused_field
  final $Res Function(CountryCode) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? alpha2Code = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alpha2Code: alpha2Code == freezed
          ? _value.alpha2Code
          : alpha2Code // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CountryCodeCopyWith<$Res>
    implements $CountryCodeCopyWith<$Res> {
  factory _$CountryCodeCopyWith(
          _CountryCode value, $Res Function(_CountryCode) then) =
      __$CountryCodeCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? alpha2Code, bool isVisible});
}

/// @nodoc
class __$CountryCodeCopyWithImpl<$Res> extends _$CountryCodeCopyWithImpl<$Res>
    implements _$CountryCodeCopyWith<$Res> {
  __$CountryCodeCopyWithImpl(
      _CountryCode _value, $Res Function(_CountryCode) _then)
      : super(_value, (v) => _then(v as _CountryCode));

  @override
  _CountryCode get _value => super._value as _CountryCode;

  @override
  $Res call({
    Object? name = freezed,
    Object? alpha2Code = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_CountryCode(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alpha2Code: alpha2Code == freezed
          ? _value.alpha2Code
          : alpha2Code // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryCode implements _CountryCode {
  const _$_CountryCode({this.name, this.alpha2Code, this.isVisible = true});

  factory _$_CountryCode.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryCodeFromJson(json);

  @override
  final String? name;
  @override
  final String? alpha2Code;
  @JsonKey(defaultValue: true)
  @override
  final bool isVisible;

  @override
  String toString() {
    return 'CountryCode(name: $name, alpha2Code: $alpha2Code, isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryCode &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.alpha2Code, alpha2Code) ||
                const DeepCollectionEquality()
                    .equals(other.alpha2Code, alpha2Code)) &&
            (identical(other.isVisible, isVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isVisible, isVisible)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(alpha2Code) ^
      const DeepCollectionEquality().hash(isVisible);

  @JsonKey(ignore: true)
  @override
  _$CountryCodeCopyWith<_CountryCode> get copyWith =>
      __$CountryCodeCopyWithImpl<_CountryCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryCodeToJson(this);
  }
}

abstract class _CountryCode implements CountryCode {
  const factory _CountryCode(
      {String? name, String? alpha2Code, bool isVisible}) = _$_CountryCode;

  factory _CountryCode.fromJson(Map<String, dynamic> json) =
      _$_CountryCode.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get alpha2Code => throw _privateConstructorUsedError;
  @override
  bool get isVisible => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryCodeCopyWith<_CountryCode> get copyWith =>
      throw _privateConstructorUsedError;
}
