import 'dart:async';

import 'package:dero_control_interface/features/wallet/domain/wallet.dart';
import 'package:dero_control_interface/features/wallet/domain/wallet_entry.dart';
import 'package:dero_control_interface/shared/data/wallet_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WalletNotifier extends StateNotifier<Wallet> {
  WalletNotifier() : super(const Wallet());

  void setAddress(String address) {
    if (address != state.address) {
      state = state.copyWith(address: address);
    }
  }

  void setBalance(int balance) {
    if (state.balance != balance) {
      state = state.copyWith(balance: balance);
    }
  }

  void setHeight(int height) {
    if (state.height != height) {
      state = state.copyWith(height: height);
    }
  }

  void setTransfers(List<Entry> transfers) {
    var tempList = [...state.transfers];
    tempList.addAll(transfers);
    state = state.copyWith(transfers: tempList);
  }

  void updateLastHistoryCheck() {
    if (state.height > state.lastHistoryCheck) {
      state = state.copyWith(lastHistoryCheck: state.height);
    }
  }
}

final walletProvider = StateNotifierProvider<WalletNotifier, Wallet>((ref) {
  return WalletNotifier();
});

final tickStreamProvider = StreamProvider.autoDispose<dynamic>((ref) {
  return Stream.periodic(const Duration(seconds: 1));
});

final walletTickUpdateProvider = FutureProvider.autoDispose<void>((ref) async {
  ref.watch(tickStreamProvider);

  if (ref.watch(walletProvider).address == '') {
    var result = await ref.watch(walletRpcClientProvider).getAddress();
    ref.watch(walletProvider.notifier).setAddress(result['address']);
  }

  var result = await ref.watch(walletRpcClientProvider).getHeight();
  ref.watch(walletProvider.notifier).setHeight(result['height']);

  result = await ref.watch(walletRpcClientProvider).getBalance();
  ref.watch(walletProvider.notifier).setBalance(result['balance']);
});

final walletGetTransfersProvider =
    FutureProvider.autoDispose.family<void, int>((ref, startingHeight) async {
  var result = await ref.watch(walletRpcClientProvider).getTransfers({
    'coinbase': true,
    'in': true,
    'out': true,
    'min_height': startingHeight + 1
  });

  if (result['entries'] == null) return;

  List<Entry> newTransfers = [];
  var entries = result['entries'] as List;

  for (var entry in entries) {
    var convertedEntry = Entry.fromJson(entry);
    newTransfers.add(convertedEntry);
  }
  ref.watch(walletProvider.notifier).setTransfers(newTransfers);
  ref.watch(walletProvider.notifier).updateLastHistoryCheck();
});