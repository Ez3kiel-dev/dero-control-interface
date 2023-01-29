import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration.freezed.dart';

part 'configuration.g.dart';

@freezed
class Configuration with _$Configuration {
  const factory Configuration({
    required String myDerodAddress,
    required String defaultRemoteDaemon,
    required String myWalletAddress,
    required String defaultWalletAddress,
    required String username,
    required bool walletAddressRequired,
    required bool walletAuthenticationRequired,
  }) = _Configuration;

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);
}
