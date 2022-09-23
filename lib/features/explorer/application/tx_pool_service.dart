import 'package:dero_control_interface/features/explorer/domain/transaction.dart';
import 'package:dero_control_interface/shared/application/derod_queries_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TxPoolNotifier extends StateNotifier<List<Transaction>> {
  TxPoolNotifier() : super([]);

  void updateTxPool(List<dynamic> transactions) {
    List<Transaction> newTxPool = [];
    for (var element in transactions) {
      newTxPool.add(Transaction(hash: element));
    }
    state = newTxPool;
  }
}

final txPoolNotifierProvider =
    StateNotifierProvider<TxPoolNotifier, List<Transaction>>((ref) {
  return TxPoolNotifier();
});

final txPoolListProvider =
    FutureProvider.autoDispose<List<Transaction>>((ref) async {
  var result = await ref.watch(txPoolProvider.future);
  if (result['txs'] == null) return [];
  ref.watch(txPoolNotifierProvider.notifier).updateTxPool(result['txs']);
  return ref.watch(txPoolNotifierProvider);
});