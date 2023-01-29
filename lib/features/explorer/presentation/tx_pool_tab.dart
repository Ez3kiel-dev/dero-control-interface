import 'package:dero_control_interface/features/explorer/application/tx_pool_service.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TxPoolTab extends ConsumerStatefulWidget {
  const TxPoolTab({super.key});

  @override
  ConsumerState createState() => _TxPoolTabState();
}

class _TxPoolTabState extends ConsumerState<TxPoolTab> {
  int _poolSize = 0;

  @override
  Widget build(BuildContext context) {
    AsyncValue streamData = ref.watch(txPoolListProvider);
    streamData.when(
        data: (txList) {
          _poolSize = txList.length;
        },
        error: (err, stack) => debugPrint(err.toString()),
        loading: () {});
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 600),
      child: Text('TX Pool($_poolSize)',
          key: ValueKey<int>(_poolSize),
          textAlign: TextAlign.center,
          style: const TextStyle(color: AppColors.green, fontSize: 20)),
    );
  }
}
