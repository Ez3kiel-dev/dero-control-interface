import 'package:dero_control_interface/shared/data/wallet_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataIntegratedAddressNotifier extends StateNotifier<String> {
  DataIntegratedAddressNotifier() : super('');

  void setData(String data) {
    state = data;
  }
}

final dataIntegratedAddressProvider =
    StateNotifierProvider.autoDispose<DataIntegratedAddressNotifier, String>(
        (ref) {
  return DataIntegratedAddressNotifier();
});

final makeIntegratedAddressProvider =
    FutureProvider.autoDispose<String>((ref) async {
  var data = ref.watch(dataIntegratedAddressProvider);
  if (data.isEmpty) {
    return ' ' * 80;
  }
  Map msg = {
    // 'address': '',
    'payload_rpc': [
      {'name': 'integratedData', 'datatype': 'S', 'value': data}
    ]
  };
  try {
    var result = await ref
        .watch(walletRpcClientProvider)
        .makeIntegratedAddress(msg) as Map<String, dynamic>;

    return result['integrated_address'];
  } catch (e) {
    throw ('integratedAddressProvider Error : $e');
  }
});

class IntegratedAddressToSplitNotifier extends StateNotifier<String> {
  IntegratedAddressToSplitNotifier() : super('');

  void setData(String data) {
    state = data;
  }
}

final integratedAddressToSplitProvider =
    StateNotifierProvider.autoDispose<IntegratedAddressToSplitNotifier, String>(
        (ref) {
  return IntegratedAddressToSplitNotifier();
});

final splitIntegratedAddressProvider =
    FutureProvider.autoDispose<String>((ref) async {
  var data = ref.watch(integratedAddressToSplitProvider);
  if (data.isEmpty) {
    return ' ' * 80;
  }

  Map msg = {
    'integrated_address': data,
  };

  try {
    var result = await ref
        .watch(walletRpcClientProvider)
        .splitIntegratedAddress(msg) as Map<String, dynamic>;

    return "Address : ${result['address']}\nPayload : ${result['payload_rpc'][0]['value']}";
  } catch (e) {
    throw ('splitIntegratedAddressProvider Error : $e');
  }
});