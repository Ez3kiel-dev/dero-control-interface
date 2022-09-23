import 'package:dero_control_interface/features/connection/domain/wallet_connection_params.dart';
import 'package:dero_control_interface/shared/data/wallet_rpc_api_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

class WalletConnectionParamsNotifier
    extends StateNotifier<WalletConnectionParams> {
  WalletConnectionParamsNotifier() : super(const WalletConnectionParams());

  void setAddress(String addr) {
    var uuid = const Uuid().v4();
    // state = state.copyWith(sessionUuid: uuid, address: 'ws://$addr/ws');
    state = state.copyWith(sessionUuid: uuid, address: addr);
  }

  void setCredentials(String user, String password) {
    // sessionUuid as salt
    // var bytes = utf8.encode('$password.${state.sessionUuid}');
    // var digest = sha256.convert(bytes);
    // debugPrint(digest.toString());
    // state = state.copyWith(user: user, password: digest.toString());
    state = state.copyWith(user: user, password: password);
  }
}

final walletConnectionParamsProvider = StateNotifierProvider<
    WalletConnectionParamsNotifier, WalletConnectionParams>((ref) {
  return WalletConnectionParamsNotifier();
});

final walletRpcClientProvider = Provider<WalletClient>((ref) {
  var walletConnectionParams = ref.watch(walletConnectionParamsProvider);
  if (walletConnectionParams.user.isNotEmpty &&
      walletConnectionParams.password.isNotEmpty) {
    return WalletClient(
        rpcWalletAddress:
            'ws://${walletConnectionParams.user}:${walletConnectionParams.password}@${walletConnectionParams.address}/ws');
  }
  return WalletClient(
      rpcWalletAddress: 'ws://${walletConnectionParams.address}/ws');
});