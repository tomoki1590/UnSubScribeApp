// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscribe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Subscribe _$SubscribeFromJson(Map<String, dynamic> json) {
  return _Subscribe.fromJson(json);
}

/// @nodoc
mixin _$Subscribe {
  String get reason => throw _privateConstructorUsedError;
  @TimestampConverter()
  dynamic get deadDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscribeCopyWith<Subscribe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscribeCopyWith<$Res> {
  factory $SubscribeCopyWith(Subscribe value, $Res Function(Subscribe) then) =
      _$SubscribeCopyWithImpl<$Res, Subscribe>;
  @useResult
  $Res call({String reason, @TimestampConverter() dynamic deadDay});
}

/// @nodoc
class _$SubscribeCopyWithImpl<$Res, $Val extends Subscribe>
    implements $SubscribeCopyWith<$Res> {
  _$SubscribeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? deadDay = freezed,
  }) {
    return _then(_value.copyWith(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      deadDay: freezed == deadDay
          ? _value.deadDay
          : deadDay // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubscribeCopyWith<$Res> implements $SubscribeCopyWith<$Res> {
  factory _$$_SubscribeCopyWith(
          _$_Subscribe value, $Res Function(_$_Subscribe) then) =
      __$$_SubscribeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reason, @TimestampConverter() dynamic deadDay});
}

/// @nodoc
class __$$_SubscribeCopyWithImpl<$Res>
    extends _$SubscribeCopyWithImpl<$Res, _$_Subscribe>
    implements _$$_SubscribeCopyWith<$Res> {
  __$$_SubscribeCopyWithImpl(
      _$_Subscribe _value, $Res Function(_$_Subscribe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
    Object? deadDay = freezed,
  }) {
    return _then(_$_Subscribe(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      deadDay: freezed == deadDay ? _value.deadDay! : deadDay,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Subscribe extends _Subscribe {
  const _$_Subscribe({this.reason = '', @TimestampConverter() this.deadDay})
      : super._();

  factory _$_Subscribe.fromJson(Map<String, dynamic> json) =>
      _$$_SubscribeFromJson(json);

  @override
  @JsonKey()
  final String reason;
  @override
  @TimestampConverter()
  final dynamic deadDay;

  @override
  String toString() {
    return 'Subscribe(reason: $reason, deadDay: $deadDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subscribe &&
            (identical(other.reason, reason) || other.reason == reason) &&
            const DeepCollectionEquality().equals(other.deadDay, deadDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, reason, const DeepCollectionEquality().hash(deadDay));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscribeCopyWith<_$_Subscribe> get copyWith =>
      __$$_SubscribeCopyWithImpl<_$_Subscribe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscribeToJson(
      this,
    );
  }
}

abstract class _Subscribe extends Subscribe {
  const factory _Subscribe(
      {final String reason,
      @TimestampConverter() final dynamic deadDay}) = _$_Subscribe;
  const _Subscribe._() : super._();

  factory _Subscribe.fromJson(Map<String, dynamic> json) =
      _$_Subscribe.fromJson;

  @override
  String get reason;
  @override
  @TimestampConverter()
  dynamic get deadDay;
  @override
  @JsonKey(ignore: true)
  _$$_SubscribeCopyWith<_$_Subscribe> get copyWith =>
      throw _privateConstructorUsedError;
}
