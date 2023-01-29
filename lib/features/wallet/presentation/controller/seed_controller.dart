import 'package:dero_control_interface/shared/data/wallet_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getSeedProvider = FutureProvider.autoDispose<String>((ref) async {
  Map msg = {'key_type': 'mnemonic'};
  try {
    var result = await ref.watch(walletRpcClientProvider).queryKey(msg)
        as Map<String, dynamic>;
    return result['key'];
  } catch (e) {
    throw ('getSeedProvider Error : $e');
  }
});
