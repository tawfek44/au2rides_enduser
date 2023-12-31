// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenericApiError _$GenericApiErrorFromJson(Map<String, dynamic> json) {
  return _GenericApiError.fromJson(json);
}

/// @nodoc
mixin _$GenericApiError {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericApiErrorCopyWith<GenericApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericApiErrorCopyWith<$Res> {
  factory $GenericApiErrorCopyWith(
          GenericApiError value, $Res Function(GenericApiError) then) =
      _$GenericApiErrorCopyWithImpl<$Res, GenericApiError>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$GenericApiErrorCopyWithImpl<$Res, $Val extends GenericApiError>
    implements $GenericApiErrorCopyWith<$Res> {
  _$GenericApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericApiErrorImplCopyWith<$Res>
    implements $GenericApiErrorCopyWith<$Res> {
  factory _$$GenericApiErrorImplCopyWith(_$GenericApiErrorImpl value,
          $Res Function(_$GenericApiErrorImpl) then) =
      __$$GenericApiErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'error') String? error,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$GenericApiErrorImplCopyWithImpl<$Res>
    extends _$GenericApiErrorCopyWithImpl<$Res, _$GenericApiErrorImpl>
    implements _$$GenericApiErrorImplCopyWith<$Res> {
  __$$GenericApiErrorImplCopyWithImpl(
      _$GenericApiErrorImpl _value, $Res Function(_$GenericApiErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GenericApiErrorImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericApiErrorImpl implements _GenericApiError {
  _$GenericApiErrorImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'error') this.error,
      @JsonKey(name: 'message') this.message});

  factory _$GenericApiErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericApiErrorImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'GenericApiError(status: $status, error: $error, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericApiErrorImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, error, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericApiErrorImplCopyWith<_$GenericApiErrorImpl> get copyWith =>
      __$$GenericApiErrorImplCopyWithImpl<_$GenericApiErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericApiErrorImplToJson(
      this,
    );
  }
}

abstract class _GenericApiError implements GenericApiError {
  factory _GenericApiError(
      {@JsonKey(name: 'status') final int? status,
      @JsonKey(name: 'error') final String? error,
      @JsonKey(name: 'message') final String? message}) = _$GenericApiErrorImpl;

  factory _GenericApiError.fromJson(Map<String, dynamic> json) =
      _$GenericApiErrorImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$GenericApiErrorImplCopyWith<_$GenericApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
