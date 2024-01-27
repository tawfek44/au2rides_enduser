// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorize_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorizeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic currencyResponse) loaded,
    required TResult Function(Object e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic currencyResponse)? loaded,
    TResult? Function(Object e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic currencyResponse)? loaded,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthorizeState value) initial,
    required TResult Function(AuthorizeStateLoading value) loading,
    required TResult Function(AuthorizeStateLoaded value) loaded,
    required TResult Function(AuthorizeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthorizeState value)? initial,
    TResult? Function(AuthorizeStateLoading value)? loading,
    TResult? Function(AuthorizeStateLoaded value)? loaded,
    TResult? Function(AuthorizeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthorizeState value)? initial,
    TResult Function(AuthorizeStateLoading value)? loading,
    TResult Function(AuthorizeStateLoaded value)? loaded,
    TResult Function(AuthorizeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizeStateCopyWith<$Res> {
  factory $AuthorizeStateCopyWith(
          AuthorizeState value, $Res Function(AuthorizeState) then) =
      _$AuthorizeStateCopyWithImpl<$Res, AuthorizeState>;
}

/// @nodoc
class _$AuthorizeStateCopyWithImpl<$Res, $Val extends AuthorizeState>
    implements $AuthorizeStateCopyWith<$Res> {
  _$AuthorizeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialAuthorizeStateImplCopyWith<$Res> {
  factory _$$InitialAuthorizeStateImplCopyWith(
          _$InitialAuthorizeStateImpl value,
          $Res Function(_$InitialAuthorizeStateImpl) then) =
      __$$InitialAuthorizeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialAuthorizeStateImplCopyWithImpl<$Res>
    extends _$AuthorizeStateCopyWithImpl<$Res, _$InitialAuthorizeStateImpl>
    implements _$$InitialAuthorizeStateImplCopyWith<$Res> {
  __$$InitialAuthorizeStateImplCopyWithImpl(_$InitialAuthorizeStateImpl _value,
      $Res Function(_$InitialAuthorizeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialAuthorizeStateImpl implements _InitialAuthorizeState {
  const _$InitialAuthorizeStateImpl();

  @override
  String toString() {
    return 'AuthorizeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialAuthorizeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic currencyResponse) loaded,
    required TResult Function(Object e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic currencyResponse)? loaded,
    TResult? Function(Object e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic currencyResponse)? loaded,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthorizeState value) initial,
    required TResult Function(AuthorizeStateLoading value) loading,
    required TResult Function(AuthorizeStateLoaded value) loaded,
    required TResult Function(AuthorizeStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthorizeState value)? initial,
    TResult? Function(AuthorizeStateLoading value)? loading,
    TResult? Function(AuthorizeStateLoaded value)? loaded,
    TResult? Function(AuthorizeStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthorizeState value)? initial,
    TResult Function(AuthorizeStateLoading value)? loading,
    TResult Function(AuthorizeStateLoaded value)? loaded,
    TResult Function(AuthorizeStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAuthorizeState implements AuthorizeState {
  const factory _InitialAuthorizeState() = _$InitialAuthorizeStateImpl;
}

/// @nodoc
abstract class _$$AuthorizeStateLoadingImplCopyWith<$Res> {
  factory _$$AuthorizeStateLoadingImplCopyWith(
          _$AuthorizeStateLoadingImpl value,
          $Res Function(_$AuthorizeStateLoadingImpl) then) =
      __$$AuthorizeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthorizeStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthorizeStateCopyWithImpl<$Res, _$AuthorizeStateLoadingImpl>
    implements _$$AuthorizeStateLoadingImplCopyWith<$Res> {
  __$$AuthorizeStateLoadingImplCopyWithImpl(_$AuthorizeStateLoadingImpl _value,
      $Res Function(_$AuthorizeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthorizeStateLoadingImpl implements AuthorizeStateLoading {
  const _$AuthorizeStateLoadingImpl();

  @override
  String toString() {
    return 'AuthorizeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic currencyResponse) loaded,
    required TResult Function(Object e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic currencyResponse)? loaded,
    TResult? Function(Object e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic currencyResponse)? loaded,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthorizeState value) initial,
    required TResult Function(AuthorizeStateLoading value) loading,
    required TResult Function(AuthorizeStateLoaded value) loaded,
    required TResult Function(AuthorizeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthorizeState value)? initial,
    TResult? Function(AuthorizeStateLoading value)? loading,
    TResult? Function(AuthorizeStateLoaded value)? loaded,
    TResult? Function(AuthorizeStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthorizeState value)? initial,
    TResult Function(AuthorizeStateLoading value)? loading,
    TResult Function(AuthorizeStateLoaded value)? loaded,
    TResult Function(AuthorizeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthorizeStateLoading implements AuthorizeState {
  const factory AuthorizeStateLoading() = _$AuthorizeStateLoadingImpl;
}

/// @nodoc
abstract class _$$AuthorizeStateLoadedImplCopyWith<$Res> {
  factory _$$AuthorizeStateLoadedImplCopyWith(_$AuthorizeStateLoadedImpl value,
          $Res Function(_$AuthorizeStateLoadedImpl) then) =
      __$$AuthorizeStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic currencyResponse});
}

/// @nodoc
class __$$AuthorizeStateLoadedImplCopyWithImpl<$Res>
    extends _$AuthorizeStateCopyWithImpl<$Res, _$AuthorizeStateLoadedImpl>
    implements _$$AuthorizeStateLoadedImplCopyWith<$Res> {
  __$$AuthorizeStateLoadedImplCopyWithImpl(_$AuthorizeStateLoadedImpl _value,
      $Res Function(_$AuthorizeStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyResponse = freezed,
  }) {
    return _then(_$AuthorizeStateLoadedImpl(
      freezed == currencyResponse ? _value.currencyResponse! : currencyResponse,
    ));
  }
}

/// @nodoc

class _$AuthorizeStateLoadedImpl implements AuthorizeStateLoaded {
  const _$AuthorizeStateLoadedImpl(this.currencyResponse);

  @override
  final dynamic currencyResponse;

  @override
  String toString() {
    return 'AuthorizeState.loaded(currencyResponse: $currencyResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizeStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other.currencyResponse, currencyResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currencyResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizeStateLoadedImplCopyWith<_$AuthorizeStateLoadedImpl>
      get copyWith =>
          __$$AuthorizeStateLoadedImplCopyWithImpl<_$AuthorizeStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic currencyResponse) loaded,
    required TResult Function(Object e) error,
  }) {
    return loaded(currencyResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic currencyResponse)? loaded,
    TResult? Function(Object e)? error,
  }) {
    return loaded?.call(currencyResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic currencyResponse)? loaded,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currencyResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthorizeState value) initial,
    required TResult Function(AuthorizeStateLoading value) loading,
    required TResult Function(AuthorizeStateLoaded value) loaded,
    required TResult Function(AuthorizeStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthorizeState value)? initial,
    TResult? Function(AuthorizeStateLoading value)? loading,
    TResult? Function(AuthorizeStateLoaded value)? loaded,
    TResult? Function(AuthorizeStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthorizeState value)? initial,
    TResult Function(AuthorizeStateLoading value)? loading,
    TResult Function(AuthorizeStateLoaded value)? loaded,
    TResult Function(AuthorizeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AuthorizeStateLoaded implements AuthorizeState {
  const factory AuthorizeStateLoaded(final dynamic currencyResponse) =
      _$AuthorizeStateLoadedImpl;

  dynamic get currencyResponse;
  @JsonKey(ignore: true)
  _$$AuthorizeStateLoadedImplCopyWith<_$AuthorizeStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorizeStateErrorImplCopyWith<$Res> {
  factory _$$AuthorizeStateErrorImplCopyWith(_$AuthorizeStateErrorImpl value,
          $Res Function(_$AuthorizeStateErrorImpl) then) =
      __$$AuthorizeStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$AuthorizeStateErrorImplCopyWithImpl<$Res>
    extends _$AuthorizeStateCopyWithImpl<$Res, _$AuthorizeStateErrorImpl>
    implements _$$AuthorizeStateErrorImplCopyWith<$Res> {
  __$$AuthorizeStateErrorImplCopyWithImpl(_$AuthorizeStateErrorImpl _value,
      $Res Function(_$AuthorizeStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$AuthorizeStateErrorImpl(
      null == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$AuthorizeStateErrorImpl implements AuthorizeStateError {
  const _$AuthorizeStateErrorImpl(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'AuthorizeState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizeStateErrorImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizeStateErrorImplCopyWith<_$AuthorizeStateErrorImpl> get copyWith =>
      __$$AuthorizeStateErrorImplCopyWithImpl<_$AuthorizeStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic currencyResponse) loaded,
    required TResult Function(Object e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic currencyResponse)? loaded,
    TResult? Function(Object e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic currencyResponse)? loaded,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthorizeState value) initial,
    required TResult Function(AuthorizeStateLoading value) loading,
    required TResult Function(AuthorizeStateLoaded value) loaded,
    required TResult Function(AuthorizeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthorizeState value)? initial,
    TResult? Function(AuthorizeStateLoading value)? loading,
    TResult? Function(AuthorizeStateLoaded value)? loaded,
    TResult? Function(AuthorizeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthorizeState value)? initial,
    TResult Function(AuthorizeStateLoading value)? loading,
    TResult Function(AuthorizeStateLoaded value)? loaded,
    TResult Function(AuthorizeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthorizeStateError implements AuthorizeState {
  const factory AuthorizeStateError(final Object e) = _$AuthorizeStateErrorImpl;

  Object get e;
  @JsonKey(ignore: true)
  _$$AuthorizeStateErrorImplCopyWith<_$AuthorizeStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
