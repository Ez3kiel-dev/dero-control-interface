// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Configuration _$$_ConfigurationFromJson(Map<String, dynamic> json) =>
    _$_Configuration(
      myDerodAddress: json['myDerodAddress'] as String,
      defaultRemoteDaemon: json['defaultRemoteDaemon'] as String,
      myWalletAddress: json['myWalletAddress'] as String,
      defaultWalletAddress: json['defaultWalletAddress'] as String,
      username: json['username'] as String,
      walletAddressRequired: json['walletAddressRequired'] as bool,
      walletAuthenticationRequired:
          json['walletAuthenticationRequired'] as bool,
    );

Map<String, dynamic> _$$_ConfigurationToJson(_$_Configuration instance) =>
    <String, dynamic>{
      'myDerodAddress': instance.myDerodAddress,
      'defaultRemoteDaemon': instance.defaultRemoteDaemon,
      'myWalletAddress': instance.myWalletAddress,
      'defaultWalletAddress': instance.defaultWalletAddress,
      'username': instance.username,
      'walletAddressRequired': instance.walletAddressRequired,
      'walletAuthenticationRequired': instance.walletAuthenticationRequired,
    };
