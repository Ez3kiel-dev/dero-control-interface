import 'package:dero_control_interface/features/connection/application/wallet_connection_service.dart';
import 'package:dero_control_interface/shared/data/derod_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final logoutProvider = StateNotifierProvider<LogoutNotifier, void>((ref) {
  return LogoutNotifier(ref);
});

class LogoutNotifier extends StateNotifier<void> {
  LogoutNotifier(this.ref) : super(null);

  final Ref ref;

  void logout() {
    ref.read(derodTickStreamStateProvider.notifier).state =
        DerodTickStreamState.disabled;
    ref.read(walletConnectionStateProvider.notifier).state = false;
  }
}