import 'package:dero_control_interface/features/configuration/application/config_service.dart';
import 'package:dero_control_interface/features/connection/application/derod_connection_service.dart';
import 'package:dero_control_interface/features/connection/application/wallet_connection_service.dart';
import 'package:dero_control_interface/shared/presentation/page/connection_page.dart';
import 'package:dero_control_interface/shared/presentation/page/hub_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    redirect: (context, state) {
      bool connectionOk = false;
      final isDerodConnected = ref.read(derodConnectionStateProvider);
      final isWalletConnected = ref.read(walletConnectionStateProvider);
      final config = ref.read(configurationNotifierProvider);

      if (config.walletAddressRequired) {
        connectionOk = isDerodConnected && isWalletConnected;
      } else {
        connectionOk = isDerodConnected;
      }

      final areWeConnected = state.location == '/hub';

      if (connectionOk) {
        return areWeConnected ? null : '/hub';
      }

      if (areWeConnected) return '/';

      return null;
    },
    refreshListenable: RouterNotifier(ref),
    routes: [
      GoRoute(
        name: 'connection',
        path: '/',
        // builder: (context, _) => const ConnectionPage(),
        pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: const ConnectionPage(),
            transitionDuration: const Duration(milliseconds: 1500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(opacity: animation, child: child)),
      ),
      GoRoute(
        name: 'hub',
        path: '/hub',
        // builder: (context, _) => const Hub(),
        pageBuilder: (context, state) => CustomTransitionPage<void>(
            key: state.pageKey,
            child: Hub(),
            transitionDuration: const Duration(milliseconds: 1500),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(opacity: animation, child: child)),
      ),
    ],
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen(
        derodConnectionStateProvider, (previous, next) => notifyListeners());
    _ref.listen(
        walletConnectionStateProvider, (previous, next) => notifyListeners());
  }
}
