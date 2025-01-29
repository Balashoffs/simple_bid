// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidImpl _$$BidImplFromJson(Map<String, dynamic> json) => _$BidImpl(
      id: json['id'] as String,
      state: json['state'] as String,
      objectName: json['objectName'] as String,
      objectPlace: json['objectPlace'] as String,
      createdDate: json['createdDate'] as String,
      finishedDate: json['finishedDate'] as String,
      taskList: (json['taskList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BidImplToJson(_$BidImpl instance) => <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'objectName': instance.objectName,
      'objectPlace': instance.objectPlace,
      'createdDate': instance.createdDate,
      'finishedDate': instance.finishedDate,
      'taskList': instance.taskList,
    };
