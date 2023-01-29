// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Transfer {
  String get destination => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError; // dero atomic unit
  int get ringsize => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferCopyWith<Transfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferCopyWith<$Res> {
  factory $TransferCopyWith(Transfer value, $Res Function(Transfer) then) =
      _$TransferCopyWithImpl<$Res, Transfer>;
  @useResult
  $Res call({String destination, int amount, int ringsize, String comment});
}

/// @nodoc
class _$TransferCopyWithImpl<$Res, $Val extends Transfer>
    implements $TransferCopyWith<$Res> {
  _$TransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? ringsize = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      ringsize: null == ringsize
          ? _value.ringsize
          : ringsize // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransferCopyWith<$Res> implements $TransferCopyWith<$Res> {
  factory _$$_TransferCopyWith(
          _$_Transfer value, $Res Function(_$_Transfer) then) =
      __$$_TransferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String destination, int amount, int ringsize, String comment});
}

/// @nodoc
class __$$_TransferCopyWithImpl<$Res>
    extends _$TransferCopyWithImpl<$Res, _$_Transfer>
    implements _$$_TransferCopyWith<$Res> {
  __$$_TransferCopyWithImpl(
      _$_Transfer _value, $Res Function(_$_Transfer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? ringsize = null,
    Object? comment = null,
  }) {
    return _then(_$_Transfer(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      ringsize: null == ringsize
          ? _value.ringsize
          : ringsize // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Transfer implements _Transfer {
  const _$_Transfer(
      {required this.destination,
      required this.amount,
      required this.ringsize,
      required this.comment});

  @override
  final String destination;
  @override
  final int amount;
// dero atomic unit
  @override
  final int ringsize;
  @override
  final String comment;

  @override
  String toString() {
    return 'Transfer(destination: $destination, amount: $amount, ringsize: $ringsize, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transfer &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.ringsize, ringsize) ||
                other.ringsize == ringsize) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, destination, amount, ringsize, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransferCopyWith<_$_Transfer> get copyWith =>
      __$$_TransferCopyWithImpl<_$_Transfer>(this, _$identity);
}

abstract class _Transfer implements Transfer {
  const factory _Transfer(
      {required final String destination,
      required final int amount,
      required final int ringsize,
      required final String comment}) = _$_Transfer;

  @override
  String get destination;
  @override
  int get amount;
  @override // dero atomic unit
  int get ringsize;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_TransferCopyWith<_$_Transfer> get copyWith =>
      throw _privateConstructorUsedError;
}
