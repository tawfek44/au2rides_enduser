// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_methods_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethodsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic Response) loaded,
    required TResult Function(Object e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic Response)? loaded,
    TResult? Function(Object e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic Response)? loaded,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPaymentMethods value) initial,
    required TResult Function(PaymentMethodsLoading value) loading,
    required TResult Function(PaymentMethodsLoaded value) loaded,
    required TResult Function(PaymentMethodsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPaymentMethods value)? initial,
    TResult? Function(PaymentMethodsLoading value)? loading,
    TResult? Function(PaymentMethodsLoaded value)? loaded,
    TResult? Function(PaymentMethodsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPaymentMethods value)? initial,
    TResult Function(PaymentMethodsLoading value)? loading,
    TResult Function(PaymentMethodsLoaded value)? loaded,
    TResult Function(PaymentMethodsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodsStateCopyWith<$Res> {
  factory $PaymentMethodsStateCopyWith(
          PaymentMethodsState value, $Res Function(PaymentMethodsState) then) =
      _$PaymentMethodsStateCopyWithImpl<$Res, PaymentMethodsState>;
}

/// @nodoc
class _$PaymentMethodsStateCopyWithImpl<$Res, $Val extends PaymentMethodsState>
    implements $PaymentMethodsStateCopyWith<$Res> {
  _$PaymentMethodsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialPaymentMethodsImplCopyWith<$Res> {
  factory _$$InitialPaymentMethodsImplCopyWith(
          _$InitialPaymentMethodsImpl value,
          $Res Function(_$InitialPaymentMethodsImpl) then) =
      __$$InitialPaymentMethodsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialPaymentMethodsImplCopyWithImpl<$Res>
    extends _$PaymentMethodsStateCopyWithImpl<$Res, _$InitialPaymentMethodsImpl>
    implements _$$InitialPaymentMethodsImplCopyWith<$Res> {
  __$$InitialPaymentMethodsImplCopyWithImpl(_$InitialPaymentMethodsImpl _value,
      $Res Function(_$InitialPaymentMethodsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialPaymentMethodsImpl implements _InitialPaymentMethods {
  const _$InitialPaymentMethodsImpl();

  @override
  String toString() {
    return 'PaymentMethodsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPaymentMethodsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic Response) loaded,
    required TResult Function(Object e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic Response)? loaded,
    TResult? Function(Object e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic Response)? loaded,
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
    required TResult Function(_InitialPaymentMethods value) initial,
    required TResult Function(PaymentMethodsLoading value) loading,
    required TResult Function(PaymentMethodsLoaded value) loaded,
    required TResult Function(PaymentMethodsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPaymentMethods value)? initial,
    TResult? Function(PaymentMethodsLoading value)? loading,
    TResult? Function(PaymentMethodsLoaded value)? loaded,
    TResult? Function(PaymentMethodsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPaymentMethods value)? initial,
    TResult Function(PaymentMethodsLoading value)? loading,
    TResult Function(PaymentMethodsLoaded value)? loaded,
    TResult Function(PaymentMethodsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialPaymentMethods implements PaymentMethodsState {
  const factory _InitialPaymentMethods() = _$InitialPaymentMethodsImpl;
}

/// @nodoc
abstract class _$$PaymentMethodsLoadingImplCopyWith<$Res> {
  factory _$$PaymentMethodsLoadingImplCopyWith(
          _$PaymentMethodsLoadingImpl value,
          $Res Function(_$PaymentMethodsLoadingImpl) then) =
      __$$PaymentMethodsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentMethodsLoadingImplCopyWithImpl<$Res>
    extends _$PaymentMethodsStateCopyWithImpl<$Res, _$PaymentMethodsLoadingImpl>
    implements _$$PaymentMethodsLoadingImplCopyWith<$Res> {
  __$$PaymentMethodsLoadingImplCopyWithImpl(_$PaymentMethodsLoadingImpl _value,
      $Res Function(_$PaymentMethodsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentMethodsLoadingImpl implements PaymentMethodsLoading {
  const _$PaymentMethodsLoadingImpl();

  @override
  String toString() {
    return 'PaymentMethodsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic Response) loaded,
    required TResult Function(Object e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic Response)? loaded,
    TResult? Function(Object e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic Response)? loaded,
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
    required TResult Function(_InitialPaymentMethods value) initial,
    required TResult Function(PaymentMethodsLoading value) loading,
    required TResult Function(PaymentMethodsLoaded value) loaded,
    required TResult Function(PaymentMethodsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPaymentMethods value)? initial,
    TResult? Function(PaymentMethodsLoading value)? loading,
    TResult? Function(PaymentMethodsLoaded value)? loaded,
    TResult? Function(PaymentMethodsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPaymentMethods value)? initial,
    TResult Function(PaymentMethodsLoading value)? loading,
    TResult Function(PaymentMethodsLoaded value)? loaded,
    TResult Function(PaymentMethodsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodsLoading implements PaymentMethodsState {
  const factory PaymentMethodsLoading() = _$PaymentMethodsLoadingImpl;
}

/// @nodoc
abstract class _$$PaymentMethodsLoadedImplCopyWith<$Res> {
  factory _$$PaymentMethodsLoadedImplCopyWith(_$PaymentMethodsLoadedImpl value,
          $Res Function(_$PaymentMethodsLoadedImpl) then) =
      __$$PaymentMethodsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Response});
}

/// @nodoc
class __$$PaymentMethodsLoadedImplCopyWithImpl<$Res>
    extends _$PaymentMethodsStateCopyWithImpl<$Res, _$PaymentMethodsLoadedImpl>
    implements _$$PaymentMethodsLoadedImplCopyWith<$Res> {
  __$$PaymentMethodsLoadedImplCopyWithImpl(_$PaymentMethodsLoadedImpl _value,
      $Res Function(_$PaymentMethodsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Response = freezed,
  }) {
    return _then(_$PaymentMethodsLoadedImpl(
      freezed == Response ? _value.Response! : Response,
    ));
  }
}

/// @nodoc

class _$PaymentMethodsLoadedImpl implements PaymentMethodsLoaded {
  const _$PaymentMethodsLoadedImpl(this.Response);

  @override
  final dynamic Response;

  @override
  String toString() {
    return 'PaymentMethodsState.loaded(Response: $Response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodsLoadedImpl &&
            const DeepCollectionEquality().equals(other.Response, Response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(Response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodsLoadedImplCopyWith<_$PaymentMethodsLoadedImpl>
      get copyWith =>
          __$$PaymentMethodsLoadedImplCopyWithImpl<_$PaymentMethodsLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic Response) loaded,
    required TResult Function(Object e) error,
  }) {
    return loaded(Response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic Response)? loaded,
    TResult? Function(Object e)? error,
  }) {
    return loaded?.call(Response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic Response)? loaded,
    TResult Function(Object e)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(Response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPaymentMethods value) initial,
    required TResult Function(PaymentMethodsLoading value) loading,
    required TResult Function(PaymentMethodsLoaded value) loaded,
    required TResult Function(PaymentMethodsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPaymentMethods value)? initial,
    TResult? Function(PaymentMethodsLoading value)? loading,
    TResult? Function(PaymentMethodsLoaded value)? loaded,
    TResult? Function(PaymentMethodsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPaymentMethods value)? initial,
    TResult Function(PaymentMethodsLoading value)? loading,
    TResult Function(PaymentMethodsLoaded value)? loaded,
    TResult Function(PaymentMethodsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodsLoaded implements PaymentMethodsState {
  const factory PaymentMethodsLoaded(final dynamic Response) =
      _$PaymentMethodsLoadedImpl;

  dynamic get Response;
  @JsonKey(ignore: true)
  _$$PaymentMethodsLoadedImplCopyWith<_$PaymentMethodsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentMethodsErrorImplCopyWith<$Res> {
  factory _$$PaymentMethodsErrorImplCopyWith(_$PaymentMethodsErrorImpl value,
          $Res Function(_$PaymentMethodsErrorImpl) then) =
      __$$PaymentMethodsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object e});
}

/// @nodoc
class __$$PaymentMethodsErrorImplCopyWithImpl<$Res>
    extends _$PaymentMethodsStateCopyWithImpl<$Res, _$PaymentMethodsErrorImpl>
    implements _$$PaymentMethodsErrorImplCopyWith<$Res> {
  __$$PaymentMethodsErrorImplCopyWithImpl(_$PaymentMethodsErrorImpl _value,
      $Res Function(_$PaymentMethodsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$PaymentMethodsErrorImpl(
      null == e ? _value.e : e,
    ));
  }
}

/// @nodoc

class _$PaymentMethodsErrorImpl implements PaymentMethodsError {
  const _$PaymentMethodsErrorImpl(this.e);

  @override
  final Object e;

  @override
  String toString() {
    return 'PaymentMethodsState.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodsErrorImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodsErrorImplCopyWith<_$PaymentMethodsErrorImpl> get copyWith =>
      __$$PaymentMethodsErrorImplCopyWithImpl<_$PaymentMethodsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic Response) loaded,
    required TResult Function(Object e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic Response)? loaded,
    TResult? Function(Object e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic Response)? loaded,
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
    required TResult Function(_InitialPaymentMethods value) initial,
    required TResult Function(PaymentMethodsLoading value) loading,
    required TResult Function(PaymentMethodsLoaded value) loaded,
    required TResult Function(PaymentMethodsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPaymentMethods value)? initial,
    TResult? Function(PaymentMethodsLoading value)? loading,
    TResult? Function(PaymentMethodsLoaded value)? loaded,
    TResult? Function(PaymentMethodsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPaymentMethods value)? initial,
    TResult Function(PaymentMethodsLoading value)? loading,
    TResult Function(PaymentMethodsLoaded value)? loaded,
    TResult Function(PaymentMethodsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PaymentMethodsError implements PaymentMethodsState {
  const factory PaymentMethodsError(final Object e) = _$PaymentMethodsErrorImpl;

  Object get e;
  @JsonKey(ignore: true)
  _$$PaymentMethodsErrorImplCopyWith<_$PaymentMethodsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
