// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryCode _$_$_CountryCodeFromJson(Map<String, dynamic> json) {
  return _$_CountryCode(
    name: json['name'] as String?,
    alpha2Code: json['alpha2Code'] as String?,
    isVisible: json['isVisible'] as bool? ?? true,
  );
}

Map<String, dynamic> _$_$_CountryCodeToJson(_$_CountryCode instance) =>
    <String, dynamic>{
      'name': instance.name,
      'alpha2Code': instance.alpha2Code,
      'isVisible': instance.isVisible,
    };
