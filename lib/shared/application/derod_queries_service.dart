import 'package:dero_control_interface/features/explorer/domain/account.dart';
import 'package:dero_control_interface/features/explorer/domain/block.dart';
import 'package:dero_control_interface/features/explorer/domain/smart_contract.dart';
import 'package:dero_control_interface/features/explorer/domain/transaction.dart';
import 'package:dero_control_interface/shared/data/derod_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final txPoolProvider = FutureProvider.autoDispose<dynamic>((ref) async {
  ref.watch(derodStreamProvider);
  Map txPool = await ref.watch(derodRpcClientProvider).getTxPool();
  return txPool;
});

final newBlockProvider = FutureProvider.autoDispose<dynamic>((ref) async {
  ref.watch(derodStreamProvider);
  return ref.watch(derodRpcClientProvider).getLastBlockHeader();
});

final getBlockProvider =
    FutureProvider.autoDispose.family<Block, String>((ref, hash) async {
  Map msg = {'hash': hash};
  Map result = await ref.watch(derodRpcClientProvider).getBlockByHash(msg);
  if (result['status'] != 'OK') throw ('getBlockDetailsProvider : KO STATUS');
  var content = result['block_header'] as Map<String, dynamic>;

  final block = Block.fromJson(content);
  return block;
});

final getTransactionProvider =
    FutureProvider.autoDispose.family<Transaction, String>((ref, hash) async {
  Map msg = {
    'txs_hashes': [hash]
  };
  var result = await ref.watch(derodRpcClientProvider).getTransaction(msg);

  if (result['status'] != 'OK') {
    throw ('getTransactionDetailsProvider : KO STATUS');
  }
  var txs = List<String>.from(result['txs_as_hex']);
  if (txs[0].isEmpty) {
    throw ('getTransactionDetailsProvider : NOT A TX');
  }
  // SC ?
  String code = result['txs'][0]['code'];
  if (code.isNotEmpty) {
    throw ('This transaction is a SC');
  }

  Transaction tx = Transaction.fromRaw(hash, result);
  return tx;
});

final getBlockByHeightProvider =
    FutureProvider.autoDispose.family<Block, int>((ref, height) async {
  Map msg = {'topoheight': height};
  Map result =
      await ref.watch(derodRpcClientProvider).getBlockByTopoHeight(msg);

  if (result['status'] != 'OK') throw ('getBlockByHeightProvider : KO STATUS');

  var content = result['block_header'] as Map<String, dynamic>;
  final block = Block.fromJson(content);
  return block;
});

final getNameToAddressProvider =
    FutureProvider.family.autoDispose<Account, String>((ref, name) async {
  Map msg = {'name': name};
  try {
    var result = await ref.watch(derodRpcClientProvider).getNameToAddress(msg)
        as Map<String, dynamic>;
    if (result['status'] != 'OK') {
      throw ('getNameToAddressProvider : KO STATUS');
    }
    var account = Account.fromJson(result);
    return account;
  } catch (e) {
    throw ('This name does not match an address : $name');
  }
});

final getSmartContractProvider =
    FutureProvider.autoDispose.family<SmartContract, String>((ref, hash) async {
  Map msg = {'scid': hash, 'code': true, 'variables': true};
  try {
    var result = await ref.watch(derodRpcClientProvider).getSC(msg)
        as Map<String, dynamic>;

    var sc = SmartContract.fromJson(result);
    sc = sc.copyWith(scid: hash);
    return sc;
  } catch (e) {
    throw ('Get SC Error : $e');
  }
});

final getVariablesNameServiceProvider =
    FutureProvider.autoDispose<SmartContract>((ref) async {
  var scidOfficialNameService =
      '0000000000000000000000000000000000000000000000000000000000000001';
  Map msg = {'scid': scidOfficialNameService, 'code': false, 'variables': true};
  try {
    var result = await ref.watch(derodRpcClientProvider).getSC(msg)
        as Map<String, dynamic>;

    var sc = SmartContract.fromJson(result);
    sc = sc.copyWith(scid: scidOfficialNameService);
    return sc;
  } catch (e) {
    throw ('getVariablesNameServiceProvider Error : $e');
  }
});
