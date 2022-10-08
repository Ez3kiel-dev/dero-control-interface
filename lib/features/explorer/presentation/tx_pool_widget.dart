import 'package:dero_control_interface/features/explorer/application/tx_pool_service.dart';
import 'package:dero_control_interface/features/explorer/domain/transaction.dart';
import 'package:dero_control_interface/features/explorer/presentation/details_dialog/tx_details_widget.dart';
import 'package:dero_control_interface/shared/application/derod_queries_service.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TxPool extends ConsumerStatefulWidget {
  const TxPool({super.key});

  @override
  ConsumerState createState() => _TxPoolState();
}

class _TxPoolState extends ConsumerState<TxPool>
    with AutomaticKeepAliveClientMixin<TxPool> {
  final List<Transaction> _txPool = [];

  Future<void> _showTransactionDetails(
      BuildContext context, WidgetRef ref, String txHash) async {
    try {
      Transaction tx = await ref.watch(getTransactionProvider(txHash).future);
      await showDialog(
          context: context,
          builder: (context) {
            return TransactionDetails(
              transaction: tx,
            );
          });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    AsyncValue streamData = ref.watch(txPoolListProvider);
    streamData.when(
        data: (txList) {
          _txPool.clear();
          _txPool.addAll(txList);
        },
        error: (err, stack) => debugPrint(err.toString()),
        loading: () {});
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          const ListTile(
            dense: true,
            title: Text(
              'Transaction Hash',
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.green),
            ),
          ),
          Expanded(
            child: Material(
              type: MaterialType.transparency,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _txPool.isEmpty ? 1 : _txPool.length,
                  itemBuilder: (context, index) {
                    return _txPool.isEmpty
                        ? const ListTile(
                            title: Text(
                              'Pool empty',
                              textAlign: TextAlign.center,
                            ),
                            dense: true,
                          )
                        : SelectionArea(
                            child: InkWell(
                              onTap: () => _showTransactionDetails(
                                  context, ref, _txPool[index].hash),
                              hoverColor: AppColors.green,
                              customBorder: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              child: Card(
                                child: ListTile(
                                  title: Row(
                                    children: [
                                      const Spacer(),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          _txPool[index].hash,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                  dense: true,
                                ),
                              ),
                            ),
                          );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}