// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$TransferCopyWithImpl<$Res>;
  $Res call({String destination, int amount, int ringsize, String comment});
}

/// @nodoc
class _$TransferCopyWithImpl<$Res> implements $TransferCopyWith<$Res> {
  _$TransferCopyWithImpl(this._value, this._then);

  final Transfer _value;
  // ignore: unused_field
  final $Res Function(Transfer) _then;

  @override
  $Res call({
    Object? destination = freezed,
    Object? amount = freezed,
    Object? ringsize = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      ringsize: ringsize == freezed
          ? _value.ringsize
          : ringsize // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TransferCopyWith<$Res> implements $TransferCopyWith<$Res> {
  factory _$$_TransferCopyWith(
          _$_Transfer value, $Res Function(_$_Transfer) then) =
      __$$_TransferCopyWithImpl<$Res>;
  @override
  $Res call({String destination, int amount, int ringsize, String comment});
}

/// @nodoc
class __$$_TransferCopyWithImpl<$Res> extends _$TransferCopyWithImpl<$Res>
    implements _$$_TransferCopyWith<$Res> {
  __$$_TransferCopyWithImpl(
      _$_Transfer _value, $Res Function(_$_Transfer) _then)
      : super(_value, (v) => _then(v as _$_Transfer));

  @override
  _$_Transfer get _value => super._value as _$_Transfer;

  @override
  $Res call({
    Object? destination = freezed,
    Object? amount = freezed,
    Object? ringsize = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$_Transfer(
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      ringsize: ringsize == freezed
          ? _value.ringsize
          : ringsize // ignore: cast_nullable_to_non_nullable
              as int,
      comment: comment == freezed
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
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.ringsize, ringsize) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(ringsize),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
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
  String get destination => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override // dero atomic unit
  int get ringsize => throw _privateConstructorUsedError;
  @override
  String get comment => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransferCopyWith<_$_Transfer> get copyWith =>
      throw _privateConstructorUsedError;
}
