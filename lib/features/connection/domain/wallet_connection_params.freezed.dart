// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$WalletConnectionParamsCopyWithImpl<$Res, WalletConnectionParams>;
  @useResult
  $Res call({String sessionUuid, String address, String user, String password});
}

/// @nodoc
class _$WalletConnectionParamsCopyWithImpl<$Res,
        $Val extends WalletConnectionParams>
    implements $WalletConnectionParamsCopyWith<$Res> {
  _$WalletConnectionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionUuid = null,
    Object? address = null,
    Object? user = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      sessionUuid: null == sessionUuid
          ? _value.sessionUuid
          : sessionUuid // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  @useResult
  $Res call({String sessionUuid, String address, String user, String password});
}

/// @nodoc
class __$$_MyWalletConnectionParamsCopyWithImpl<$Res>
    extends _$WalletConnectionParamsCopyWithImpl<$Res,
        _$_MyWalletConnectionParams>
    implements _$$_MyWalletConnectionParamsCopyWith<$Res> {
  __$$_MyWalletConnectionParamsCopyWithImpl(_$_MyWalletConnectionParams _value,
      $Res Function(_$_MyWalletConnectionParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionUuid = null,
    Object? address = null,
    Object? user = null,
    Object? password = null,
  }) {
    return _then(_$_MyWalletConnectionParams(
      sessionUuid: null == sessionUuid
          ? _value.sessionUuid
          : sessionUuid // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
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
            (identical(other.sessionUuid, sessionUuid) ||
                other.sessionUuid == sessionUuid) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sessionUuid, address, user, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  String get sessionUuid;
  @override
  String get address;
  @override
  String get user;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_MyWalletConnectionParamsCopyWith<_$_MyWalletConnectionParams>
      get copyWith => throw _privateConstructorUsedError;
}
