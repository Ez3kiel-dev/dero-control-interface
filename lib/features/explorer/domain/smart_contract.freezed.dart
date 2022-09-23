// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'smart_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmartContract _$SmartContractFromJson(Map<String, dynamic> json) {
  return _SmartContract.fromJson(json);
}

/// @nodoc
mixin _$SmartContract {
  String? get scid => throw _privateConstructorUsedError;
  Map<String, dynamic> get stringkeys => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmartContractCopyWith<SmartContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmartContractCopyWith<$Res> {
  factory $SmartContractCopyWith(
          SmartContract value, $Res Function(SmartContract) then) =
      _$SmartContractCopyWithImpl<$Res>;
  $Res call(
      {String? scid,
      Map<String, dynamic> stringkeys,
      int balance,
      String code});
}

/// @nodoc
class _$SmartContractCopyWithImpl<$Res>
    implements $SmartContractCopyWith<$Res> {
  _$SmartContractCopyWithImpl(this._value, this._then);

  final SmartContract _value;
  // ignore: unused_field
  final $Res Function(SmartContract) _then;

  @override
  $Res call({
    Object? scid = freezed,
    Object? stringkeys = freezed,
    Object? balance = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      scid: scid == freezed
          ? _value.scid
          : scid // ignore: cast_nullable_to_non_nullable
              as String?,
      stringkeys: stringkeys == freezed
          ? _value.stringkeys
          : stringkeys // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SmartContractCopyWith<$Res>
    implements $SmartContractCopyWith<$Res> {
  factory _$$_SmartContractCopyWith(
          _$_SmartContract value, $Res Function(_$_SmartContract) then) =
      __$$_SmartContractCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? scid,
      Map<String, dynamic> stringkeys,
      int balance,
      String code});
}

/// @nodoc
class __$$_SmartContractCopyWithImpl<$Res>
    extends _$SmartContractCopyWithImpl<$Res>
    implements _$$_SmartContractCopyWith<$Res> {
  __$$_SmartContractCopyWithImpl(
      _$_SmartContract _value, $Res Function(_$_SmartContract) _then)
      : super(_value, (v) => _then(v as _$_SmartContract));

  @override
  _$_SmartContract get _value => super._value as _$_SmartContract;

  @override
  $Res call({
    Object? scid = freezed,
    Object? stringkeys = freezed,
    Object? balance = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_SmartContract(
      scid: scid == freezed
          ? _value.scid
          : scid // ignore: cast_nullable_to_non_nullable
              as String?,
      stringkeys: stringkeys == freezed
          ? _value._stringkeys
          : stringkeys // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SmartContract implements _SmartContract {
  const _$_SmartContract(
      {this.scid,
      final Map<String, dynamic> stringkeys = const {},
      this.balance = 0,
      this.code = ''})
      : _stringkeys = stringkeys;

  factory _$_SmartContract.fromJson(Map<String, dynamic> json) =>
      _$$_SmartContractFromJson(json);

  @override
  final String? scid;
  final Map<String, dynamic> _stringkeys;
  @override
  @JsonKey()
  Map<String, dynamic> get stringkeys {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stringkeys);
  }

  @override
  @JsonKey()
  final int balance;
  @override
  @JsonKey()
  final String code;

  @override
  String toString() {
    return 'SmartContract(scid: $scid, stringkeys: $stringkeys, balance: $balance, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmartContract &&
            const DeepCollectionEquality().equals(other.scid, scid) &&
            const DeepCollectionEquality()
                .equals(other._stringkeys, _stringkeys) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scid),
      const DeepCollectionEquality().hash(_stringkeys),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_SmartContractCopyWith<_$_SmartContract> get copyWith =>
      __$$_SmartContractCopyWithImpl<_$_SmartContract>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SmartContractToJson(this);
  }
}

abstract class _SmartContract implements SmartContract {
  const factory _SmartContract(
      {final String? scid,
      final Map<String, dynamic> stringkeys,
      final int balance,
      final String code}) = _$_SmartContract;

  factory _SmartContract.fromJson(Map<String, dynamic> json) =
      _$_SmartContract.fromJson;

  @override
  String? get scid => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get stringkeys => throw _privateConstructorUsedError;
  @override
  int get balance => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SmartContractCopyWith<_$_SmartContract> get copyWith =>
      throw _privateConstructorUsedError;
}
