import 'dart:async';
import 'dart:core';

import 'package:dero_control_interface/shared/data/wallet_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final walletConnectionStateProvider = StateProvider<bool>((ref) => false);

final walletConnectProvider = FutureProvider.autoDispose<bool>((ref) async {
  String rpcPingResponse = '';
  try {
    rpcPingResponse = await ref.watch(walletRpcClientProvider).ping();
    if (rpcPingResponse.toString().trim() == 'Pong') {
      ref.watch(walletConnectionStateProvider.notifier).state = true;
      return true;
    }
    return false;
  } catch (error) {
    debugPrint('walletConnectProvider - ${error.toString()}');
    ref.watch(walletConnectionStateProvider.notifier).state = false;
    return false;
  }
});

final walletSetConnectionParamsProvider =
    Provider<WalletConnectionParamsNotifier>((ref) {
  return ref.watch(walletConnectionParamsProvider.notifier);
});

class WalletConnectionErrorNotifier extends StateNotifier<bool> {
  WalletConnectionErrorNotifier() : super(false);

  void connectionFailed() {
    state = true;
    Timer(const Duration(seconds: 5), () {
      state = false;
    });
  }
}

final walletConnectionErrorProvider =
    StateNotifierProvider<WalletConnectionErrorNotifier, bool>((ref) {
  return WalletConnectionErrorNotifier();
});

final initWalletClientProvider = Provider.autoDispose<void>((ref) {
  ref.invalidate(walletRpcClientProvider);
});
