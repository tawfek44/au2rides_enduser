// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyState {
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
    required TResult Function(_InitialCurrency value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrecnyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrency value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrecnyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrency value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrecnyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyStateCopyWith<$Res> {
  factory $CurrencyStateCopyWith(
          CurrencyState value, $Res Function(CurrencyState) then) =
      _$CurrencyStateCopyWithImpl<$Res, CurrencyState>;
}

/// @nodoc
class _$CurrencyStateCopyWithImpl<$Res, $Val extends CurrencyState>
    implements $CurrencyStateCopyWith<$Res> {
  _$CurrencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCurrencyImplCopyWith<$Res> {
  factory _$$InitialCurrencyImplCopyWith(_$InitialCurrencyImpl value,
          $Res Function(_$InitialCurrencyImpl) then) =
      __$$InitialCurrencyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$InitialCurrencyImpl>
    implements _$$InitialCurrencyImplCopyWith<$Res> {
  __$$InitialCurrencyImplCopyWithImpl(
      _$InitialCurrencyImpl _value, $Res Function(_$InitialCurrencyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCurrencyImpl implements _InitialCurrency {
  const _$InitialCurrencyImpl();

  @override
  String toString() {
    return 'CurrencyState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCurrencyImpl);
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
    required TResult Function(_InitialCurrency value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrecnyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrency value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrecnyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrency value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrecnyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCurrency implements CurrencyState {
  const factory _InitialCurrency() = _$InitialCurrencyImpl;
}

/// @nodoc
abstract class _$$CurrencyLoadingImplCopyWith<$Res> {
  factory _$$CurrencyLoadingImplCopyWith(_$CurrencyLoadingImpl value,
          $Res Function(_$CurrencyLoadingImpl) then) =
      __$$CurrencyLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyLoadingImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyLoadingImpl>
    implements _$$CurrencyLoadingImplCopyWith<$Res> {
  __$$CurrencyLoadingImplCopyWithImpl(
      _$CurrencyLoadingImpl _value, $Res Function(_$CurrencyLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyLoadingImpl implements CurrencyLoading {
  const _$CurrencyLoadingImpl();

  @override
  String toString() {
    return 'CurrencyState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrencyLoadingImpl);
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
    required TResult Function(_InitialCurrency value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrecnyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrency value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrecnyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrency value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrecnyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CurrencyLoading implements CurrencyState {
  const factory CurrencyLoading() = _$CurrencyLoadingImpl;
}

/// @nodoc
abstract class _$$CurrecnyLoadedImplCopyWith<$Res> {
  factory _$$CurrecnyLoadedImplCopyWith(_$CurrecnyLoadedImpl value,
          $Res Function(_$CurrecnyLoadedImpl) then) =
      __$$CurrecnyLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic currencyResponse});
}

/// @nodoc
class __$$CurrecnyLoadedImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrecnyLoadedImpl>
    implements _$$CurrecnyLoadedImplCopyWith<$Res> {
  __$$CurrecnyLoadedImplCopyWithImpl(
      _$CurrecnyLoadedImpl _value, $Res Function(_$CurrecnyLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyResponse = freezed,
  }) {
    return _then(_$CurrecnyLoadedImpl(
      freezed == currencyResponse ? _value.currencyResponse! : currencyResponse,
    ));
  }
}

/// @nodoc

class _$CurrecnyLoadedImpl implements CurrecnyLoaded {
  const _$CurrecnyLoadedImpl(this.currencyResponse);

  @override
  final dynamic currencyResponse;

  @override
  String toString() {
    return 'CurrencyState.loaded(currencyResponse: $currencyResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrecnyLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other.currencyResponse, currencyResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currencyResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrecnyLoadedImplCopyWith<_$CurrecnyLoadedImpl> get copyWith =>
      __$$CurrecnyLoadedImplCopyWithImpl<_$CurrecnyLoadedImpl>(
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
    required TResult Function(_InitialCurrency value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrecnyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrency value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrecnyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrency value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrecnyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CurrecnyLoaded implements CurrencyState {
  const factory CurrecnyLoaded(final dynamic currencyResponse) =
      _$CurrecnyLoadedImpl;

  dynamic get currencyResponse;
  @JsonKey(ignore: true)
  _$$CurrecnyLoadedImplCopyWith<_$CurrecnyLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyErrorImplCopyWith<$Res> {
  factory _$$CurrencyErrorImplCopyWith(
          _$CurrencyErrorImpl value, $Res Function(_$CurrencyErrorImpl) then) =
      __$$CurrencyErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$CurrencyErrorImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyErrorImpl>
    implements _$$CurrencyErrorImplCopyWith<$Res> {
  __$$CurrencyErrorImplCopyWithImpl(
      _$CurrencyErrorImpl _value, $Res Function(_$CurrencyErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$CurrencyErrorImpl(
      null == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$CurrencyErrorImpl implements CurrencyError {
  const _$CurrencyErrorImpl(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'CurrencyState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyErrorImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyErrorImplCopyWith<_$CurrencyErrorImpl> get copyWith =>
      __$$CurrencyErrorImplCopyWithImpl<_$CurrencyErrorImpl>(this, _$identity);

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
    required TResult Function(_InitialCurrency value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrecnyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCurrency value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrecnyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCurrency value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrecnyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CurrencyError implements CurrencyState {
  const factory CurrencyError(final Object e) = _$CurrencyErrorImpl;

  Object get e;
  @JsonKey(ignore: true)
  _$$CurrencyErrorImplCopyWith<_$CurrencyErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
