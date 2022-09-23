import 'dart:convert';

import 'package:dero_control_interface/features/configuration/data/storage_repository.dart';
import 'package:dero_control_interface/features/configuration/domain/configuration.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfigurationNotifier extends StateNotifier<Configuration> {
  final _storage = ConfigStorage();

  ConfigurationNotifier()
      : super(const Configuration(
            myDerodAddress: '',
            defaultRemoteDaemon: '127.0.0.1:10102',
            myWalletAddress: '',
            defaultWalletAddress: '127.0.0.1:10103',
            username: '',
            walletAddressRequired: true,
            walletAuthenticationRequired: false));

  Future<Configuration> loadFromStorage() async {
    var rawContent = await _storage.readData();
    if (rawContent.isEmpty) {
      return state;
    }

    try {
      var content = jsonDecode(rawContent) as Map<String, dynamic>;
      return Configuration.fromJson(content);
    } catch (e) {
      debugPrint(e.toString());
    }
    return state;
  }

  Future<void> updateStorage(Configuration configuration) async {
    var content = configuration.toJson();
    await _storage.writeData(jsonEncode(content));
    state = configuration.copyWith();
  }
}

final configurationNotifierProvider =
    StateNotifierProvider.autoDispose<ConfigurationNotifier, Configuration>(
        (ref) {
  return ConfigurationNotifier();
});

final loadConfigurationProvider =
    FutureProvider.autoDispose<Configuration>((ref) async {
  return ref.watch(configurationNotifierProvider.notifier).loadFromStorage();
});

final updateConfigurationProvider = FutureProvider.autoDispose
    .family<void, Configuration>((ref, updatedConfig) async {
  return ref
      .watch(configurationNotifierProvider.notifier)
      .updateStorage(updatedConfig);
});