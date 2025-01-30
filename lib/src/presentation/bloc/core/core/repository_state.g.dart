// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UninitializedState<T> _$UninitializedStateFromJson<T>(
        Map<String, dynamic> json) =>
    UninitializedState<T>();

Map<String, dynamic> _$UninitializedStateToJson<T>(
        UninitializedState<T> instance) =>
    <String, dynamic>{};

LoadingState<T> _$LoadingStateFromJson<T>(Map<String, dynamic> json) =>
    LoadingState<T>(
      _Converter<T?>().fromJson(json['outdatedModel']),
    );

Map<String, dynamic> _$LoadingStateToJson<T>(LoadingState<T> instance) =>
    <String, dynamic>{
      'outdatedModel': _$JsonConverterToJson<Object?, T>(
          instance.outdatedModel, _Converter<T?>().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

FailureState<T> _$FailureStateFromJson<T>(Map<String, dynamic> json) =>
    FailureState<T>(
      Failure.fromJson(json['failure'] as Map<String, dynamic>),
      _Converter<T?>().fromJson(json['outdatedModel']),
    );

Map<String, dynamic> _$FailureStateToJson<T>(FailureState<T> instance) =>
    <String, dynamic>{
      'failure': instance.failure,
      'outdatedModel': _$JsonConverterToJson<Object?, T>(
          instance.outdatedModel, _Converter<T?>().toJson),
    };

SuccessState<T> _$SuccessStateFromJson<T>(Map<String, dynamic> json) =>
    SuccessState<T>(
      _Converter<T>().fromJson(json['model']),
      (json['timestamp'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SuccessStateToJson<T>(SuccessState<T> instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'model': _Converter<T>().toJson(instance.model),
    };
