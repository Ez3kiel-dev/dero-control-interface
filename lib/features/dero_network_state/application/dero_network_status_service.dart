import 'package:dero_control_interface/features/dero_network_state/domain/dero_network.dart';
import 'package:dero_control_interface/shared/data/derod_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final derodVersionProvider =
    FutureProvider.autoDispose<DerodVersion>((ref) async {
  var info = await ref.watch(derodRpcClientProvider).getInfo();
  return DerodVersion(version: info['version']);
});

final derodInfoProvider = FutureProvider.autoDispose<DerodInfo>((ref) async {
  ref.watch(derodStreamProvider);
  var info = await ref.watch(derodRpcClientProvider).getInfo();
  return DerodInfo(
    testnet: info['testnet'],
    height: info['height'].toString(),
    stableHeight: info['stableheight'].toString(),
    rawHashrate: info['difficulty'],
    rawAverageBlockTime50: info['averageblocktime50'],
    rawTotalSupply: info['total_supply'],
    blocksCount: info['blocks_count'].toString(),
    miniblocksInMemory: info['miniblocks_in_memory'].toString(),
    rawHashrate1d: info['hashrate_1d'].toString(),
    connectedMiners: info['connected_miners'].toString(),
    incomingConnections: info['incoming_connections_count'].toString(),
    rawHashrate7d: info['hashrate_7d'].toString(),
    outgoingConnections: info['outgoing_connections_count'].toString(),
    rawMiningVelocity: info['mining_velocity'].toString(),
    rawUpTime: info['uptime'],
    miniblocksRejected: info['miniblocks_rejected_count'].toString(),
    miniblocksAccepted: info['miniblocks_accepted_count'].toString(),
    rawHashrate1hr: info['hashrate_1hr'].toString(),
  );
});