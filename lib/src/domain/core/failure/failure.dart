import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failure.freezed.dart';

part 'failure.g.dart';

enum FailureType { api, network, unauthorized, database, response, unknown }

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure(
    FailureType failureType,
    String? description,
  ) = _Failure;

  @override
  String toString() => describeEnum(failureType);

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);
}
