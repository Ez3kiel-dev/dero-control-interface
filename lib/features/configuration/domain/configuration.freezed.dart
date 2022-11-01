// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  return _Configuration.fromJson(json);
}

/// @nodoc
mixin _$Configuration {
  String get myDerodAddress => throw _privateConstructorUsedError;
  String get defaultRemoteDaemon => throw _privateConstructorUsedError;
  String get myWalletAddress => throw _privateConstructorUsedError;
  String get defaultWalletAddress => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get walletAddressRequired => throw _privateConstructorUsedError;
  bool get walletAuthenticationRequired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigurationCopyWith<Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationCopyWith<$Res> {
  factory $ConfigurationCopyWith(
          Configuration value, $Res Function(Configuration) then) =
      _$ConfigurationCopyWithImpl<$Res, Configuration>;
  @useResult
  $Res call(
      {String myDerodAddress,
      String defaultRemoteDaemon,
      String myWalletAddress,
      String defaultWalletAddress,
      String username,
      bool walletAddressRequired,
      bool walletAuthenticationRequired});
}

/// @nodoc
class _$ConfigurationCopyWithImpl<$Res, $Val extends Configuration>
    implements $ConfigurationCopyWith<$Res> {
  _$ConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myDerodAddress = null,
    Object? defaultRemoteDaemon = null,
    Object? myWalletAddress = null,
    Object? defaultWalletAddress = null,
    Object? username = null,
    Object? walletAddressRequired = null,
    Object? walletAuthenticationRequired = null,
  }) {
    return _then(_value.copyWith(
      myDerodAddress: null == myDerodAddress
          ? _value.myDerodAddress
          : myDerodAddress // ignore: cast_nullable_to_non_nullable
              as String,
      defaultRemoteDaemon: null == defaultRemoteDaemon
          ? _value.defaultRemoteDaemon
          : defaultRemoteDaemon // ignore: cast_nullable_to_non_nullable
              as String,
      myWalletAddress: null == myWalletAddress
          ? _value.myWalletAddress
          : myWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      defaultWalletAddress: null == defaultWalletAddress
          ? _value.defaultWalletAddress
          : defaultWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddressRequired: null == walletAddressRequired
          ? _value.walletAddressRequired
          : walletAddressRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      walletAuthenticationRequired: null == walletAuthenticationRequired
          ? _value.walletAuthenticationRequired
          : walletAuthenticationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigurationCopyWith<$Res>
    implements $ConfigurationCopyWith<$Res> {
  factory _$$_ConfigurationCopyWith(
          _$_Configuration value, $Res Function(_$_Configuration) then) =
      __$$_ConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String myDerodAddress,
      String defaultRemoteDaemon,
      String myWalletAddress,
      String defaultWalletAddress,
      String username,
      bool walletAddressRequired,
      bool walletAuthenticationRequired});
}

/// @nodoc
class __$$_ConfigurationCopyWithImpl<$Res>
    extends _$ConfigurationCopyWithImpl<$Res, _$_Configuration>
    implements _$$_ConfigurationCopyWith<$Res> {
  __$$_ConfigurationCopyWithImpl(
      _$_Configuration _value, $Res Function(_$_Configuration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myDerodAddress = null,
    Object? defaultRemoteDaemon = null,
    Object? myWalletAddress = null,
    Object? defaultWalletAddress = null,
    Object? username = null,
    Object? walletAddressRequired = null,
    Object? walletAuthenticationRequired = null,
  }) {
    return _then(_$_Configuration(
      myDerodAddress: null == myDerodAddress
          ? _value.myDerodAddress
          : myDerodAddress // ignore: cast_nullable_to_non_nullable
              as String,
      defaultRemoteDaemon: null == defaultRemoteDaemon
          ? _value.defaultRemoteDaemon
          : defaultRemoteDaemon // ignore: cast_nullable_to_non_nullable
              as String,
      myWalletAddress: null == myWalletAddress
          ? _value.myWalletAddress
          : myWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      defaultWalletAddress: null == defaultWalletAddress
          ? _value.defaultWalletAddress
          : defaultWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddressRequired: null == walletAddressRequired
          ? _value.walletAddressRequired
          : walletAddressRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      walletAuthenticationRequired: null == walletAuthenticationRequired
          ? _value.walletAuthenticationRequired
          : walletAuthenticationRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Configuration with DiagnosticableTreeMixin implements _Configuration {
  const _$_Configuration(
      {required this.myDerodAddress,
      required this.defaultRemoteDaemon,
      required this.myWalletAddress,
      required this.defaultWalletAddress,
      required this.username,
      required this.walletAddressRequired,
      required this.walletAuthenticationRequired});

  factory _$_Configuration.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigurationFromJson(json);

  @override
  final String myDerodAddress;
  @override
  final String defaultRemoteDaemon;
  @override
  final String myWalletAddress;
  @override
  final String defaultWalletAddress;
  @override
  final String username;
  @override
  final bool walletAddressRequired;
  @override
  final bool walletAuthenticationRequired;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Configuration(myDerodAddress: $myDerodAddress, defaultRemoteDaemon: $defaultRemoteDaemon, myWalletAddress: $myWalletAddress, defaultWalletAddress: $defaultWalletAddress, username: $username, walletAddressRequired: $walletAddressRequired, walletAuthenticationRequired: $walletAuthenticationRequired)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Configuration'))
      ..add(DiagnosticsProperty('myDerodAddress', myDerodAddress))
      ..add(DiagnosticsProperty('defaultRemoteDaemon', defaultRemoteDaemon))
      ..add(DiagnosticsProperty('myWalletAddress', myWalletAddress))
      ..add(DiagnosticsProperty('defaultWalletAddress', defaultWalletAddress))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('walletAddressRequired', walletAddressRequired))
      ..add(DiagnosticsProperty(
          'walletAuthenticationRequired', walletAuthenticationRequired));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Configuration &&
            (identical(other.myDerodAddress, myDerodAddress) ||
                other.myDerodAddress == myDerodAddress) &&
            (identical(other.defaultRemoteDaemon, defaultRemoteDaemon) ||
                other.defaultRemoteDaemon == defaultRemoteDaemon) &&
            (identical(other.myWalletAddress, myWalletAddress) ||
                other.myWalletAddress == myWalletAddress) &&
            (identical(other.defaultWalletAddress, defaultWalletAddress) ||
                other.defaultWalletAddress == defaultWalletAddress) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.walletAddressRequired, walletAddressRequired) ||
                other.walletAddressRequired == walletAddressRequired) &&
            (identical(other.walletAuthenticationRequired,
                    walletAuthenticationRequired) ||
                other.walletAuthenticationRequired ==
                    walletAuthenticationRequired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      myDerodAddress,
      defaultRemoteDaemon,
      myWalletAddress,
      defaultWalletAddress,
      username,
      walletAddressRequired,
      walletAuthenticationRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigurationCopyWith<_$_Configuration> get copyWith =>
      __$$_ConfigurationCopyWithImpl<_$_Configuration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigurationToJson(
      this,
    );
  }
}

abstract class _Configuration implements Configuration {
  const factory _Configuration(
      {required final String myDerodAddress,
      required final String defaultRemoteDaemon,
      required final String myWalletAddress,
      required final String defaultWalletAddress,
      required final String username,
      required final bool walletAddressRequired,
      required final bool walletAuthenticationRequired}) = _$_Configuration;

  factory _Configuration.fromJson(Map<String, dynamic> json) =
      _$_Configuration.fromJson;

  @override
  String get myDerodAddress;
  @override
  String get defaultRemoteDaemon;
  @override
  String get myWalletAddress;
  @override
  String get defaultWalletAddress;
  @override
  String get username;
  @override
  bool get walletAddressRequired;
  @override
  bool get walletAuthenticationRequired;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigurationCopyWith<_$_Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}
