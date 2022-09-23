import 'dart:async';

import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class DerodClient {
  late Client derodClient;

  DerodClient({required String rpcDerodAddress}) {
    var socket = WebSocketChannel.connect(Uri.parse(rpcDerodAddress));
    derodClient = Client(socket.cast<String>());
    unawaited(derodClient.listen());
  }

  Future<dynamic> ping() async {
    return derodClient.sendRequest('DERO.Ping');
  }

  Future<dynamic> getInfo() async {
    return derodClient.sendRequest('DERO.GetInfo');
  }

  Future<dynamic> getHeight() async {
    return await derodClient.sendRequest('DERO.GetHeight');
  }

  Future<dynamic> getBlock(dynamic getBlockParams) async {
    return derodClient.sendRequest('DERO.GetBlock', getBlockParams);
  }

  Future<dynamic> getBlockByHash(dynamic getBlockByHashParams) async {
    return derodClient.sendRequest(
        'DERO.GetBlockHeaderByHash', getBlockByHashParams);
  }

  Future<dynamic> getBlockByTopoHeight(
      dynamic getBlockByTopoHeightParams) async {
    return derodClient.sendRequest(
        'DERO.GetBlockHeaderByTopoHeight', getBlockByTopoHeightParams);
  }

  Future<dynamic> getTxPool() async {
    return derodClient.sendRequest('DERO.GetTxPool');
  }

  Future<dynamic> getTransaction(dynamic getTransactionParams) async {
    return derodClient.sendRequest('DERO.GetTransaction', getTransactionParams);
  }

  Future<dynamic> getLastBlockHeader() async {
    return derodClient.sendRequest('DERO.GetLastBlockHeader');
  }

  Future<dynamic> getSC(dynamic getSCParams) async {
    return derodClient.sendRequest('DERO.GetSC', getSCParams);
  }

  Future<dynamic> getGasEstimate(dynamic getGasEstimateParams) async {
    return derodClient.sendRequest('DERO.GetGasEstimate', getGasEstimateParams);
  }

  Future<dynamic> getNameToAddress(dynamic getNameToAddressParams) async {
    return derodClient.sendRequest(
        'DERO.NameToAddress', getNameToAddressParams);
  }

// Future<dynamic> getRandomAddress(dynamic getRandomAddressParams) async {
//   return derodClient.sendRequest('DERO.GetRandomAddress', getRandomAddressParams);
// }
}