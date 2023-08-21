// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_subscribe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mainsubscribe _$MainsubscribeFromJson(Map<String, dynamic> json) {
  return _Mainsubscribe.fromJson(json);
}

/// @nodoc
mixin _$Mainsubscribe {
  String get subscribeId => throw _privateConstructorUsedError;
  String get subscribeName => throw _privateConstructorUsedError;
  String get deleteUrl => throw _privateConstructorUsedError;
  List<Map<String, int>> get subscribePlan =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainsubscribeCopyWith<Mainsubscribe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainsubscribeCopyWith<$Res> {
  factory $MainsubscribeCopyWith(
          Mainsubscribe value, $Res Function(Mainsubscribe) then) =
      _$MainsubscribeCopyWithImpl<$Res, Mainsubscribe>;
  @useResult
  $Res call(
      {String subscribeId,
      String subscribeName,
      String deleteUrl,
      List<Map<String, int>> subscribePlan});
}

/// @nodoc
class _$MainsubscribeCopyWithImpl<$Res, $Val extends Mainsubscribe>
    implements $MainsubscribeCopyWith<$Res> {
  _$MainsubscribeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribeId = null,
    Object? subscribeName = null,
    Object? deleteUrl = null,
    Object? subscribePlan = null,
  }) {
    return _then(_value.copyWith(
      subscribeId: null == subscribeId
          ? _value.subscribeId
          : subscribeId // ignore: cast_nullable_to_non_nullable
              as String,
      subscribeName: null == subscribeName
          ? _value.subscribeName
          : subscribeName // ignore: cast_nullable_to_non_nullable
              as String,
      deleteUrl: null == deleteUrl
          ? _value.deleteUrl
          : deleteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscribePlan: null == subscribePlan
          ? _value.subscribePlan
          : subscribePlan // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainsubscribeCopyWith<$Res>
    implements $MainsubscribeCopyWith<$Res> {
  factory _$$_MainsubscribeCopyWith(
          _$_Mainsubscribe value, $Res Function(_$_Mainsubscribe) then) =
      __$$_MainsubscribeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subscribeId,
      String subscribeName,
      String deleteUrl,
      List<Map<String, int>> subscribePlan});
}

/// @nodoc
class __$$_MainsubscribeCopyWithImpl<$Res>
    extends _$MainsubscribeCopyWithImpl<$Res, _$_Mainsubscribe>
    implements _$$_MainsubscribeCopyWith<$Res> {
  __$$_MainsubscribeCopyWithImpl(
      _$_Mainsubscribe _value, $Res Function(_$_Mainsubscribe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribeId = null,
    Object? subscribeName = null,
    Object? deleteUrl = null,
    Object? subscribePlan = null,
  }) {
    return _then(_$_Mainsubscribe(
      subscribeId: null == subscribeId
          ? _value.subscribeId
          : subscribeId // ignore: cast_nullable_to_non_nullable
              as String,
      subscribeName: null == subscribeName
          ? _value.subscribeName
          : subscribeName // ignore: cast_nullable_to_non_nullable
              as String,
      deleteUrl: null == deleteUrl
          ? _value.deleteUrl
          : deleteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subscribePlan: null == subscribePlan
          ? _value._subscribePlan
          : subscribePlan // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mainsubscribe extends _Mainsubscribe {
  const _$_Mainsubscribe(
      {this.subscribeId = '',
      this.subscribeName = '',
      this.deleteUrl = '',
      final List<Map<String, int>> subscribePlan = const []})
      : _subscribePlan = subscribePlan,
        super._();

  factory _$_Mainsubscribe.fromJson(Map<String, dynamic> json) =>
      _$$_MainsubscribeFromJson(json);

  @override
  @JsonKey()
  final String subscribeId;
  @override
  @JsonKey()
  final String subscribeName;
  @override
  @JsonKey()
  final String deleteUrl;
  final List<Map<String, int>> _subscribePlan;
  @override
  @JsonKey()
  List<Map<String, int>> get subscribePlan {
    if (_subscribePlan is EqualUnmodifiableListView) return _subscribePlan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscribePlan);
  }

  @override
  String toString() {
    return 'Mainsubscribe(subscribeId: $subscribeId, subscribeName: $subscribeName, deleteUrl: $deleteUrl, subscribePlan: $subscribePlan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mainsubscribe &&
            (identical(other.subscribeId, subscribeId) ||
                other.subscribeId == subscribeId) &&
            (identical(other.subscribeName, subscribeName) ||
                other.subscribeName == subscribeName) &&
            (identical(other.deleteUrl, deleteUrl) ||
                other.deleteUrl == deleteUrl) &&
            const DeepCollectionEquality()
                .equals(other._subscribePlan, _subscribePlan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscribeId, subscribeName,
      deleteUrl, const DeepCollectionEquality().hash(_subscribePlan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainsubscribeCopyWith<_$_Mainsubscribe> get copyWith =>
      __$$_MainsubscribeCopyWithImpl<_$_Mainsubscribe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainsubscribeToJson(
      this,
    );
  }
}

abstract class _Mainsubscribe extends Mainsubscribe {
  const factory _Mainsubscribe(
      {final String subscribeId,
      final String subscribeName,
      final String deleteUrl,
      final List<Map<String, int>> subscribePlan}) = _$_Mainsubscribe;
  const _Mainsubscribe._() : super._();

  factory _Mainsubscribe.fromJson(Map<String, dynamic> json) =
      _$_Mainsubscribe.fromJson;

  @override
  String get subscribeId;
  @override
  String get subscribeName;
  @override
  String get deleteUrl;
  @override
  List<Map<String, int>> get subscribePlan;
  @override
  @JsonKey(ignore: true)
  _$$_MainsubscribeCopyWith<_$_Mainsubscribe> get copyWith =>
      throw _privateConstructorUsedError;
}
