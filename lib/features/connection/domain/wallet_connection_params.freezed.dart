// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_connection_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletConnectionParams {
  String get sessionUuid => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletConnectionParamsCopyWith<WalletConnectionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletConnectionParamsCopyWith<$Res> {
  factory $WalletConnectionParamsCopyWith(WalletConnectionParams value,
          $Res Function(WalletConnectionParams) then) =
      _$WalletConnectionParamsCopyWithImpl<$Res>;
  $Res call({String sessionUuid, String address, String user, String password});
}

/// @nodoc
class _$WalletConnectionParamsCopyWithImpl<$Res>
    implements $WalletConnectionParamsCopyWith<$Res> {
  _$WalletConnectionParamsCopyWithImpl(this._value, this._then);

  final WalletConnectionParams _value;
  // ignore: unused_field
  final $Res Function(WalletConnectionParams) _then;

  @override
  $Res call({
    Object? sessionUuid = freezed,
    Object? address = freezed,
    Object? user = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      sessionUuid: sessionUuid == freezed
          ? _value.sessionUuid
          : sessionUuid // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MyWalletConnectionParamsCopyWith<$Res>
    implements $WalletConnectionParamsCopyWith<$Res> {
  factory _$$_MyWalletConnectionParamsCopyWith(
          _$_MyWalletConnectionParams value,
          $Res Function(_$_MyWalletConnectionParams) then) =
      __$$_MyWalletConnectionParamsCopyWithImpl<$Res>;
  @override
  $Res call({String sessionUuid, String address, String user, String password});
}

/// @nodoc
class __$$_MyWalletConnectionParamsCopyWithImpl<$Res>
    extends _$WalletConnectionParamsCopyWithImpl<$Res>
    implements _$$_MyWalletConnectionParamsCopyWith<$Res> {
  __$$_MyWalletConnectionParamsCopyWithImpl(_$_MyWalletConnectionParams _value,
      $Res Function(_$_MyWalletConnectionParams) _then)
      : super(_value, (v) => _then(v as _$_MyWalletConnectionParams));

  @override
  _$_MyWalletConnectionParams get _value =>
      super._value as _$_MyWalletConnectionParams;

  @override
  $Res call({
    Object? sessionUuid = freezed,
    Object? address = freezed,
    Object? user = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_MyWalletConnectionParams(
      sessionUuid: sessionUuid == freezed
          ? _value.sessionUuid
          : sessionUuid // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MyWalletConnectionParams implements _MyWalletConnectionParams {
  const _$_MyWalletConnectionParams(
      {this.sessionUuid = '',
      this.address = '',
      this.user = '',
      this.password = ''});

  @override
  @JsonKey()
  final String sessionUuid;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String user;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'WalletConnectionParams(sessionUuid: $sessionUuid, address: $address, user: $user, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyWalletConnectionParams &&
            const DeepCollectionEquality()
                .equals(other.sessionUuid, sessionUuid) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionUuid),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_MyWalletConnectionParamsCopyWith<_$_MyWalletConnectionParams>
      get copyWith => __$$_MyWalletConnectionParamsCopyWithImpl<
          _$_MyWalletConnectionParams>(this, _$identity);
}

abstract class _MyWalletConnectionParams implements WalletConnectionParams {
  const factory _MyWalletConnectionParams(
      {final String sessionUuid,
      final String address,
      final String user,
      final String password}) = _$_MyWalletConnectionParams;

  @override
  String get sessionUuid => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get user => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MyWalletConnectionParamsCopyWith<_$_MyWalletConnectionParams>
      get copyWith => throw _privateConstructorUsedError;
}
