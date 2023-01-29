import 'dart:async';

import 'package:dero_control_interface/shared/data/derod_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DerodConnection extends StateNotifier<bool> {
  DerodConnection(this.ref, bool state) : super(state);

  final Ref ref;

  Future<bool> connect(String derodAddress) async {
    ref.read(derodParamsProvider.notifier).setAddress(derodAddress);
    ref.container.refresh(derodRpcClientProvider);
    await Future.delayed(const Duration(seconds: 1));

    String rpcPingResponse = '';
    try {
      rpcPingResponse = await ref.watch(derodRpcClientProvider).ping();
      if (rpcPingResponse.toString().trim() == 'Pong') {
        await Future.delayed(Duration.zero);
        ref.read(derodTickStreamStateProvider.notifier).state =
            DerodTickStreamState.ready;
        return true;
      }
      return false;
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }
}

final derodConnectionStateProvider =
    StateNotifierProvider<DerodConnection, bool>((ref) {
  DerodTickStreamState tickStreamSate = ref.watch(derodTickStreamStateProvider);
  if (tickStreamSate == DerodTickStreamState.ready) {
    return DerodConnection(ref, true);
  }
  return DerodConnection(ref, false);
});

class DerodConnectionErrorNotifier extends StateNotifier<bool> {
  DerodConnectionErrorNotifier() : super(false);

  void connectionFailed() {
    state = true;
    Timer(const Duration(seconds: 5), () {
      state = false;
    });
  }
}

final derodConnectionErrorProvider =
    StateNotifierProvider<DerodConnectionErrorNotifier, bool>((ref) {
  return DerodConnectionErrorNotifier();
});
