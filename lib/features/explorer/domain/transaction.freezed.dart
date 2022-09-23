// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String get hash => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get blockHash => throw _privateConstructorUsedError;
  int? get ringSize => throw _privateConstructorUsedError;
  String? get signer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {String hash,
      int? height,
      String? blockHash,
      int? ringSize,
      String? signer});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? hash = freezed,
    Object? height = freezed,
    Object? blockHash = freezed,
    Object? ringSize = freezed,
    Object? signer = freezed,
  }) {
    return _then(_value.copyWith(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: blockHash == freezed
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      ringSize: ringSize == freezed
          ? _value.ringSize
          : ringSize // ignore: cast_nullable_to_non_nullable
              as int?,
      signer: signer == freezed
          ? _value.signer
          : signer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String hash,
      int? height,
      String? blockHash,
      int? ringSize,
      String? signer});
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, (v) => _then(v as _$_Transaction));

  @override
  _$_Transaction get _value => super._value as _$_Transaction;

  @override
  $Res call({
    Object? hash = freezed,
    Object? height = freezed,
    Object? blockHash = freezed,
    Object? ringSize = freezed,
    Object? signer = freezed,
  }) {
    return _then(_$_Transaction(
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      blockHash: blockHash == freezed
          ? _value.blockHash
          : blockHash // ignore: cast_nullable_to_non_nullable
              as String?,
      ringSize: ringSize == freezed
          ? _value.ringSize
          : ringSize // ignore: cast_nullable_to_non_nullable
              as int?,
      signer: signer == freezed
          ? _value.signer
          : signer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  const _$_Transaction(
      {required this.hash,
      this.height,
      this.blockHash,
      this.ringSize,
      this.signer});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final String hash;
  @override
  final int? height;
  @override
  final String? blockHash;
  @override
  final int? ringSize;
  @override
  final String? signer;

  @override
  String toString() {
    return 'Transaction(hash: $hash, height: $height, blockHash: $blockHash, ringSize: $ringSize, signer: $signer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            const DeepCollectionEquality().equals(other.hash, hash) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.blockHash, blockHash) &&
            const DeepCollectionEquality().equals(other.ringSize, ringSize) &&
            const DeepCollectionEquality().equals(other.signer, signer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hash),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(blockHash),
      const DeepCollectionEquality().hash(ringSize),
      const DeepCollectionEquality().hash(signer));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required final String hash,
      final int? height,
      final String? blockHash,
      final int? ringSize,
      final String? signer}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get hash => throw _privateConstructorUsedError;
  @override
  int? get height => throw _privateConstructorUsedError;
  @override
  String? get blockHash => throw _privateConstructorUsedError;
  @override
  int? get ringSize => throw _privateConstructorUsedError;
  @override
  String? get signer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
