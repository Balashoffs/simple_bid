import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'bid.freezed.dart';
part 'bid.g.dart';

@freezed
class Bid with _$Bid {
  const factory Bid({
    required String id,
    required String state,
    required String objectName,
    required String objectPlace,
    required String createdDate,
    required String finishedDate,
    @Default([])List<String> taskList,
  }) = _Bid;

  factory Bid.fromJson(Map<String, Object?> json)
  => _$BidFromJson(json);
}
