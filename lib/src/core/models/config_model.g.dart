// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfigModel _$$_ConfigModelFromJson(Map<String, dynamic> json) =>
    _$_ConfigModel(
      env: $enumDecode(_$FlavorEnumMap, json['env']),
      apiUrl: json['apiUrl'] as String,
    );

Map<String, dynamic> _$$_ConfigModelToJson(_$_ConfigModel instance) =>
    <String, dynamic>{
      'env': _$FlavorEnumMap[instance.env]!,
      'apiUrl': instance.apiUrl,
    };

const _$FlavorEnumMap = {
  Flavor.DEV: 'DEV',
  Flavor.PROD: 'PROD',
  Flavor.TEST: 'TEST',
  Flavor.STAGING: 'STAGING',
};
