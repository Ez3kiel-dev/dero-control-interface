import 'package:dero_control_interface/shared/data/derod_rpc_api_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

@immutable
class DerodParams {
  final String address; // ws://ip:port/ws

  const DerodParams({required address}) : address = 'ws://$address/ws';

  DerodParams copyWith(String? address) {
    return DerodParams(address: address ?? this.address);
  }
}

class DerodParamsNotifier extends StateNotifier<DerodParams> {
  DerodParamsNotifier() : super(const DerodParams(address: ''));

  void setAddress(String address) {
    state = state.copyWith(address);
  }
}

final derodParamsProvider =
    StateNotifierProvider<DerodParamsNotifier, DerodParams>((ref) {
  return DerodParamsNotifier();
});

enum DerodTickStreamState {
  ready,
  disabled,
}

final derodTickStreamStateProvider =
    StateProvider<DerodTickStreamState>((ref) => DerodTickStreamState.disabled);

final derodChannelProvider = Provider.autoDispose<WebSocketChannel>((ref) {
  var address = ref.watch(derodParamsProvider).address;
  return WebSocketChannel.connect(Uri.parse(address));
});

final derodStreamProvider = StreamProvider.autoDispose<dynamic>((ref) {
  var socket = ref.watch(derodChannelProvider);
  var multiStream = socket.stream.asBroadcastStream();

  final stream = multiStream.listen((event) {}, onDone: () async {
    ref.container.refresh(derodTickStreamStateProvider);
  }, onError: (error) {
    debugPrint('OnError derodStream : $error');
  });

  ref.onDispose(() {
    stream.cancel();
    socket.sink.close();
  });

  return multiStream;
});

final derodRpcClientProvider = Provider<DerodClient>((ref) {
  var rpcDerodAddress = ref.watch(derodParamsProvider);
  return DerodClient(rpcDerodAddress: rpcDerodAddress.address);
});