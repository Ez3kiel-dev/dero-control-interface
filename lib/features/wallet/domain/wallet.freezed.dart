// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return _Wallet.fromJson(json);
}

/// @nodoc
mixin _$Wallet {
  String get address => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  List<Entry> get transfers => throw _privateConstructorUsedError;
  int get lastHistoryCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res>;
  $Res call(
      {String address,
      int height,
      int balance,
      List<Entry> transfers,
      int lastHistoryCheck});
}

/// @nodoc
class _$WalletCopyWithImpl<$Res> implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  final Wallet _value;
  // ignore: unused_field
  final $Res Function(Wallet) _then;

  @override
  $Res call({
    Object? address = freezed,
    Object? height = freezed,
    Object? balance = freezed,
    Object? transfers = freezed,
    Object? lastHistoryCheck = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      transfers: transfers == freezed
          ? _value.transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as List<Entry>,
      lastHistoryCheck: lastHistoryCheck == freezed
          ? _value.lastHistoryCheck
          : lastHistoryCheck // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WalletCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$$_WalletCopyWith(_$_Wallet value, $Res Function(_$_Wallet) then) =
      __$$_WalletCopyWithImpl<$Res>;
  @override
  $Res call(
      {String address,
      int height,
      int balance,
      List<Entry> transfers,
      int lastHistoryCheck});
}

/// @nodoc
class __$$_WalletCopyWithImpl<$Res> extends _$WalletCopyWithImpl<$Res>
    implements _$$_WalletCopyWith<$Res> {
  __$$_WalletCopyWithImpl(_$_Wallet _value, $Res Function(_$_Wallet) _then)
      : super(_value, (v) => _then(v as _$_Wallet));

  @override
  _$_Wallet get _value => super._value as _$_Wallet;

  @override
  $Res call({
    Object? address = freezed,
    Object? height = freezed,
    Object? balance = freezed,
    Object? transfers = freezed,
    Object? lastHistoryCheck = freezed,
  }) {
    return _then(_$_Wallet(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      transfers: transfers == freezed
          ? _value._transfers
          : transfers // ignore: cast_nullable_to_non_nullable
              as List<Entry>,
      lastHistoryCheck: lastHistoryCheck == freezed
          ? _value.lastHistoryCheck
          : lastHistoryCheck // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wallet implements _Wallet {
  const _$_Wallet(
      {this.address = '',
      this.height = 0,
      this.balance = 0,
      final List<Entry> transfers = const [],
      this.lastHistoryCheck = 0})
      : _transfers = transfers;

  factory _$_Wallet.fromJson(Map<String, dynamic> json) =>
      _$$_WalletFromJson(json);

  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final int height;
  @override
  @JsonKey()
  final int balance;
  final List<Entry> _transfers;
  @override
  @JsonKey()
  List<Entry> get transfers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transfers);
  }

  @override
  @JsonKey()
  final int lastHistoryCheck;

  @override
  String toString() {
    return 'Wallet(address: $address, height: $height, balance: $balance, transfers: $transfers, lastHistoryCheck: $lastHistoryCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wallet &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other._transfers, _transfers) &&
            const DeepCollectionEquality()
                .equals(other.lastHistoryCheck, lastHistoryCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(_transfers),
      const DeepCollectionEquality().hash(lastHistoryCheck));

  @JsonKey(ignore: true)
  @override
  _$$_WalletCopyWith<_$_Wallet> get copyWith =>
      __$$_WalletCopyWithImpl<_$_Wallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletToJson(this);
  }
}

abstract class _Wallet implements Wallet {
  const factory _Wallet(
      {final String address,
      final int height,
      final int balance,
      final List<Entry> transfers,
      final int lastHistoryCheck}) = _$_Wallet;

  factory _Wallet.fromJson(Map<String, dynamic> json) = _$_Wallet.fromJson;

  @override
  String get address => throw _privateConstructorUsedError;
  @override
  int get height => throw _privateConstructorUsedError;
  @override
  int get balance => throw _privateConstructorUsedError;
  @override
  List<Entry> get transfers => throw _privateConstructorUsedError;
  @override
  int get lastHistoryCheck => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WalletCopyWith<_$_Wallet> get copyWith =>
      throw _privateConstructorUsedError;
}
