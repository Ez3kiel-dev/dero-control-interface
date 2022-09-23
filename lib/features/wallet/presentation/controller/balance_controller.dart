import 'package:dero_control_interface/features/wallet/application/wallet_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EstimatedFeesNotifier extends StateNotifier<int> {
  EstimatedFeesNotifier() : super(181); // Default RingSize 16

  void estimateFees(int ringsize) {
    // Fees Formula
    // https://github.com/deroproject/derohe/blob/main/walletapi/transaction_build.go#L139
    switch (ringsize) {
      case 2:
        state = 121;
        break;
      case 4:
        state = 121;
        break;
      case 8:
        state = 121;
        break;
      case 16:
        state = 181;
        break;
      case 32:
        state = 241;
        break;
      case 64:
        state = 361;
        break;
      case 128:
        state = 601;
        break;
      default:
        state = 0;
    }
  }
}

final estimatedFeesProvider =
    StateNotifierProvider.autoDispose<EstimatedFeesNotifier, int>((ref) {
  return EstimatedFeesNotifier();
});

final amountProvider = StateProvider.autoDispose<int>((ref) => 0);

final futureBalanceProvider = StateProvider.autoDispose<int>((ref) {
  int currentBalance =
      ref.watch(walletProvider.select((wallet) => wallet.balance));
  int estimatedFees = ref.watch(estimatedFeesProvider);
  int amount = ref.watch(amountProvider);
  if (amount > 0) {
    return currentBalance - (amount + estimatedFees);
  }
  return currentBalance;
});