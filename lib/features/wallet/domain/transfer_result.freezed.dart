// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transfer_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransferResult {
  TransferState get transferState => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferResultCopyWith<TransferResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferResultCopyWith<$Res> {
  factory $TransferResultCopyWith(
          TransferResult value, $Res Function(TransferResult) then) =
      _$TransferResultCopyWithImpl<$Res>;
  $Res call({TransferState transferState, String data});
}

/// @nodoc
class _$TransferResultCopyWithImpl<$Res>
    implements $TransferResultCopyWith<$Res> {
  _$TransferResultCopyWithImpl(this._value, this._then);

  final TransferResult _value;
  // ignore: unused_field
  final $Res Function(TransferResult) _then;

  @override
  $Res call({
    Object? transferState = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      transferState: transferState == freezed
          ? _value.transferState
          : transferState // ignore: cast_nullable_to_non_nullable
              as TransferState,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TransferResultCopyWith<$Res>
    implements $TransferResultCopyWith<$Res> {
  factory _$$_TransferResultCopyWith(
          _$_TransferResult value, $Res Function(_$_TransferResult) then) =
      __$$_TransferResultCopyWithImpl<$Res>;
  @override
  $Res call({TransferState transferState, String data});
}

/// @nodoc
class __$$_TransferResultCopyWithImpl<$Res>
    extends _$TransferResultCopyWithImpl<$Res>
    implements _$$_TransferResultCopyWith<$Res> {
  __$$_TransferResultCopyWithImpl(
      _$_TransferResult _value, $Res Function(_$_TransferResult) _then)
      : super(_value, (v) => _then(v as _$_TransferResult));

  @override
  _$_TransferResult get _value => super._value as _$_TransferResult;

  @override
  $Res call({
    Object? transferState = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_TransferResult(
      transferState: transferState == freezed
          ? _value.transferState
          : transferState // ignore: cast_nullable_to_non_nullable
              as TransferState,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TransferResult implements _TransferResult {
  const _$_TransferResult(
      {this.transferState = TransferState.pending, this.data = ''});

  @override
  @JsonKey()
  final TransferState transferState;
  @override
  @JsonKey()
  final String data;

  @override
  String toString() {
    return 'TransferResult(transferState: $transferState, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransferResult &&
            const DeepCollectionEquality()
                .equals(other.transferState, transferState) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transferState),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_TransferResultCopyWith<_$_TransferResult> get copyWith =>
      __$$_TransferResultCopyWithImpl<_$_TransferResult>(this, _$identity);
}

abstract class _TransferResult implements TransferResult {
  const factory _TransferResult(
      {final TransferState transferState,
      final String data}) = _$_TransferResult;

  @override
  TransferState get transferState => throw _privateConstructorUsedError;
  @override
  String get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransferResultCopyWith<_$_TransferResult> get copyWith =>
      throw _privateConstructorUsedError;
}
