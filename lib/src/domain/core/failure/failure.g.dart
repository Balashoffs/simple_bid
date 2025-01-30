// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailureImpl _$$FailureImplFromJson(Map<String, dynamic> json) =>
    _$FailureImpl(
      $enumDecode(_$FailureTypeEnumMap, json['failureType']),
      json['description'] as String?,
    );

Map<String, dynamic> _$$FailureImplToJson(_$FailureImpl instance) =>
    <String, dynamic>{
      'failureType': _$FailureTypeEnumMap[instance.failureType]!,
      'description': instance.description,
    };

const _$FailureTypeEnumMap = {
  FailureType.api: 'api',
  FailureType.network: 'network',
  FailureType.unauthorized: 'unauthorized',
  FailureType.database: 'database',
  FailureType.response: 'response',
  FailureType.unknown: 'unknown',
};
