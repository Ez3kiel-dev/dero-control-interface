import 'dart:async';

import 'package:json_rpc_2/json_rpc_2.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WalletClient {
  late Client walletClient;

  WalletClient({required String rpcWalletAddress}) {
    var socket = WebSocketChannel.connect(Uri.parse(rpcWalletAddress));
    walletClient = Client(socket.cast<String>());
    unawaited(walletClient.listen());
  }

  void close() {
    walletClient.close();
  }

  Future<dynamic> ping() async {
    return await walletClient.sendRequest('DERO.Ping');
  }

  Future<dynamic> getAddress() async {
    return await walletClient.sendRequest('WALLET.GetAddress');
  }

  Future<dynamic> getBalance() async {
    return await walletClient.sendRequest('WALLET.GetBalance');
  }

  Future<dynamic> getHeight() async {
    return await walletClient.sendRequest('WALLET.GetHeight');
  }

  Future<dynamic> getTransferByTXID(dynamic getTransferByTXIDParams) async {
    return await walletClient.sendRequest(
        'WALLET.GetTransferbyTXID', getTransferByTXIDParams);
  }

  Future<dynamic> getTransfers(dynamic getTransfersParams) async {
    return await walletClient.sendRequest(
        'WALLET.GetTransfers', getTransfersParams);
  }

  Future<dynamic> makeIntegratedAddress(
      dynamic makeIntegratedAddressParams) async {
    return await walletClient.sendRequest(
        'WALLET.MakeIntegratedAddress', makeIntegratedAddressParams);
  }

  Future<dynamic> splitIntegratedAddress(
      dynamic splitIntegratedAddressParams) async {
    return await walletClient.sendRequest(
        'WALLET.SplitIntegratedAddress', splitIntegratedAddressParams);
  }

  Future<dynamic> queryKey(dynamic queryKeyParams) async {
    return await walletClient.sendRequest('WALLET.QueryKey', queryKeyParams);
  }

  Future<dynamic> transfer(dynamic transferParams) async {
    return await walletClient.sendRequest('WALLET.Transfer', transferParams);
  }

  Future<dynamic> scInvoke(dynamic scInvokeParams) async {
    return await walletClient.sendRequest('WALLET.scinvoke', scInvokeParams);
  }
}