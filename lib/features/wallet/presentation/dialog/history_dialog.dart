import 'package:data_table_2/data_table_2.dart';
import 'package:dero_control_interface/features/wallet/application/wallet_service.dart';
import 'package:dero_control_interface/shared/presentation/components/regular_button_style.dart';
import 'package:dero_control_interface/shared/presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      title: const Text(
        'Transaction History',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.green, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      content: Consumer(
        builder: (context, ref, child) {
          int lastCheck = ref.read(walletProvider).lastHistoryCheck;
          var history = ref.watch(walletGetTransfersProvider(lastCheck));

          return history.when(data: (_) {
            var transfers = ref.read(walletProvider).transfers;
            return SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: DataTable2(
                minWidth: 600,
                columnSpacing: 12,
                columns: kHistoryHeaderDataTable,
                rows: List<DataRow>.generate(
                    transfers.length,
                    (index) =>
                        DataRow2(specificRowHeight: 100, cells: <DataCell>[
                          DataCell(Builder(builder: (context) {
                            var dt = DateTime.tryParse(
                                transfers.reversed.toList()[index].time);
                            var fdt =
                                DateFormat('dd/MM/yy\nHH:mm:ss').format(dt!);
                            return Center(child: SelectableText(fdt));
                          })),
                          DataCell(Center(
                            child: SelectableText(transfers.reversed
                                .toList()[index]
                                .height
                                .toString()),
                          )),
                          DataCell(transfers.reversed.toList()[index].coinbase
                              ? const Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.coins,
                                    color: AppColors.text,
                                  ),
                                )
                              : transfers.reversed.toList()[index].incoming
                                  ? const Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.arrowTurnDown,
                                        color: AppColors.text,
                                      ),
                                    )
                                  : const Center(
                                      child: FaIcon(
                                        FontAwesomeIcons.arrowTurnUp,
                                        color: AppColors.text,
                                      ),
                                    )),
                          DataCell(Builder(builder: (context) {
                            String data = transfers.reversed
                                .toList()[index]
                                .txid
                                .toString();
                            return Center(
                              child: SelectableText(data),
                            );
                          })),
                          DataCell(Builder(builder: (context) {
                            String data =
                                (transfers.reversed.toList()[index].amount /
                                        100000)
                                    .toString();
                            return Center(
                              child: SelectableText(data),
                            );
                          })),
                          DataCell(Builder(builder: (context) {
                            String data =
                                (transfers.reversed.toList()[index].fees /
                                        100000)
                                    .toString();
                            return Center(
                              child: SelectableText(data),
                            );
                          })),
                          DataCell(Builder(builder: (context) {
                            String data = transfers.reversed
                                .toList()[index]
                                .blockhash
                                .toString();
                            return Center(
                              child: SelectableText(data),
                            );
                          })),
                          DataCell(Builder(builder: (context) {
                            String data = transfers.reversed
                                .toList()[index]
                                .destination
                                .toString();
                            return Center(
                              child: SelectableText(data),
                            );
                          })),
                          DataCell(Builder(builder: (context) {
                            String data = transfers.reversed
                                .toList()[index]
                                .sender
                                .toString();
                            return Center(
                              child: SelectableText(data),
                            );
                          })),
                          DataCell(Builder(builder: (context) {
                            String data = transfers.reversed
                                .toList()[index]
                                .proof
                                .toString();
                            return Center(
                              child: SelectableText(data),
                            );
                          })),
                          DataCell(Builder(builder: (context) {
                            String data = '';
                            var payload =
                                transfers.reversed.toList()[index].payload_rpc;
                            if (payload != null) {
                              data = payload[0]['value'].toString();
                            } else {
                              data = '/';
                            }
                            return Center(
                              child: SelectableText(data),
                            );
                          })),
                        ])),
              ),
            );
          }, error: (error, stacktrace) {
            return SizedBox(
              child: Text(error.toString()),
            );
          }, loading: () {
            return const CircularProgressIndicator(
              color: AppColors.green,
            );
          });
        },
      ),
      actions: [
        Center(
          child: OutlinedButton(
              style: kRegularButtonStyle,
              onPressed: () {
                Navigator.pop(context);
              },
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Back',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )),
        )
      ],
    );
  }
}

final kHistoryHeaderDataTable = [
  const DataColumn2(
      size: ColumnSize.S,
      label: Center(
        child: Text(
          'Timestamp',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.S,
      label: Center(
        child: Text(
          'Height',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.S,
      label: Center(
        child: Text(
          'Type',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.L,
      label: Center(
        child: Text(
          'Txid',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.S,
      label: Center(
        child: Text(
          'Amount',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.S,
      label: Center(
        child: Text(
          'Fees',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.L,
      label: Center(
        child: Text(
          'Block hash',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.L,
      label: Center(
        child: Text(
          'Destination',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.L,
      label: Center(
        child: Text(
          'Sender',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.L,
      label: Center(
        child: Text(
          'Proof',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
  const DataColumn2(
      size: ColumnSize.L,
      label: Center(
        child: Text(
          'Message',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.green),
        ),
      )),
];