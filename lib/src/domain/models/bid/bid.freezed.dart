// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bid _$BidFromJson(Map<String, dynamic> json) {
  return _Bid.fromJson(json);
}

/// @nodoc
mixin _$Bid {
  String get id => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get objectName => throw _privateConstructorUsedError;
  String get objectPlace => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  String get finishedDate => throw _privateConstructorUsedError;
  String get taskList => throw _privateConstructorUsedError;

  /// Serializes this Bid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidCopyWith<Bid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidCopyWith<$Res> {
  factory $BidCopyWith(Bid value, $Res Function(Bid) then) =
      _$BidCopyWithImpl<$Res, Bid>;
  @useResult
  $Res call(
      {String id,
      String state,
      String objectName,
      String objectPlace,
      String createdDate,
      String finishedDate,
      String taskList});
}

/// @nodoc
class _$BidCopyWithImpl<$Res, $Val extends Bid> implements $BidCopyWith<$Res> {
  _$BidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? objectName = null,
    Object? objectPlace = null,
    Object? createdDate = null,
    Object? finishedDate = null,
    Object? taskList = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      objectName: null == objectName
          ? _value.objectName
          : objectName // ignore: cast_nullable_to_non_nullable
              as String,
      objectPlace: null == objectPlace
          ? _value.objectPlace
          : objectPlace // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      finishedDate: null == finishedDate
          ? _value.finishedDate
          : finishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      taskList: null == taskList
          ? _value.taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidImplCopyWith<$Res> implements $BidCopyWith<$Res> {
  factory _$$BidImplCopyWith(_$BidImpl value, $Res Function(_$BidImpl) then) =
      __$$BidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String state,
      String objectName,
      String objectPlace,
      String createdDate,
      String finishedDate,
      String taskList});
}

/// @nodoc
class __$$BidImplCopyWithImpl<$Res> extends _$BidCopyWithImpl<$Res, _$BidImpl>
    implements _$$BidImplCopyWith<$Res> {
  __$$BidImplCopyWithImpl(_$BidImpl _value, $Res Function(_$BidImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? objectName = null,
    Object? objectPlace = null,
    Object? createdDate = null,
    Object? finishedDate = null,
    Object? taskList = null,
  }) {
    return _then(_$BidImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      objectName: null == objectName
          ? _value.objectName
          : objectName // ignore: cast_nullable_to_non_nullable
              as String,
      objectPlace: null == objectPlace
          ? _value.objectPlace
          : objectPlace // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      finishedDate: null == finishedDate
          ? _value.finishedDate
          : finishedDate // ignore: cast_nullable_to_non_nullable
              as String,
      taskList: null == taskList
          ? _value.taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidImpl with DiagnosticableTreeMixin implements _Bid {
  const _$BidImpl(
      {required this.id,
      required this.state,
      required this.objectName,
      required this.objectPlace,
      required this.createdDate,
      required this.finishedDate,
      required this.taskList});

  factory _$BidImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidImplFromJson(json);

  @override
  final String id;
  @override
  final String state;
  @override
  final String objectName;
  @override
  final String objectPlace;
  @override
  final String createdDate;
  @override
  final String finishedDate;
  @override
  final String taskList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Bid(id: $id, state: $state, objectName: $objectName, objectPlace: $objectPlace, createdDate: $createdDate, finishedDate: $finishedDate, taskList: $taskList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Bid'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('objectName', objectName))
      ..add(DiagnosticsProperty('objectPlace', objectPlace))
      ..add(DiagnosticsProperty('createdDate', createdDate))
      ..add(DiagnosticsProperty('finishedDate', finishedDate))
      ..add(DiagnosticsProperty('taskList', taskList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.objectName, objectName) ||
                other.objectName == objectName) &&
            (identical(other.objectPlace, objectPlace) ||
                other.objectPlace == objectPlace) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.finishedDate, finishedDate) ||
                other.finishedDate == finishedDate) &&
            (identical(other.taskList, taskList) ||
                other.taskList == taskList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, state, objectName,
      objectPlace, createdDate, finishedDate, taskList);

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidImplCopyWith<_$BidImpl> get copyWith =>
      __$$BidImplCopyWithImpl<_$BidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidImplToJson(
      this,
    );
  }
}

abstract class _Bid implements Bid {
  const factory _Bid(
      {required final String id,
      required final String state,
      required final String objectName,
      required final String objectPlace,
      required final String createdDate,
      required final String finishedDate,
      required final String taskList}) = _$BidImpl;

  factory _Bid.fromJson(Map<String, dynamic> json) = _$BidImpl.fromJson;

  @override
  String get id;
  @override
  String get state;
  @override
  String get objectName;
  @override
  String get objectPlace;
  @override
  String get createdDate;
  @override
  String get finishedDate;
  @override
  String get taskList;

  /// Create a copy of Bid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidImplCopyWith<_$BidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
