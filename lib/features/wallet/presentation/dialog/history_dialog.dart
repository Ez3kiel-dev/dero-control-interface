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
            var reversedTransfers = transfers.reversed.toList(growable: false);

            var dataRows = List<DataRow2>.generate(
                reversedTransfers.length,
                (index) => DataRow2(specificRowHeight: 100, cells: <DataCell>[
                      DataCell(Builder(builder: (context) {
                        var dt =
                            DateTime.tryParse(reversedTransfers[index].time);
                        var fdt = DateFormat('dd/MM/yy\nHH:mm:ss').format(dt!);
                        return Center(child: SelectableText(fdt));
                      })),
                      DataCell(Center(
                        child: SelectableText(
                            reversedTransfers[index].height.toString()),
                      )),
                      DataCell(reversedTransfers[index].coinbase
                          ? const Center(
                              child: FaIcon(
                                FontAwesomeIcons.coins,
                                color: AppColors.text,
                              ),
                            )
                          : reversedTransfers[index].incoming
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
                        String data = reversedTransfers[index].txid.toString();
                        return Center(
                          child: SelectableText(data),
                        );
                      })),
                      DataCell(Builder(builder: (context) {
                        String data = (reversedTransfers[index].amount / 100000)
                            .toString();
                        return Center(
                          child: SelectableText(data),
                        );
                      })),
                      DataCell(Builder(builder: (context) {
                        String data =
                            (reversedTransfers[index].fees / 100000).toString();
                        return Center(
                          child: SelectableText(data),
                        );
                      })),
                      DataCell(Builder(builder: (context) {
                        String data =
                            reversedTransfers[index].blockhash.toString();
                        return Center(
                          child: SelectableText(data),
                        );
                      })),
                      DataCell(Builder(builder: (context) {
                        String data =
                            reversedTransfers[index].destination.toString();
                        return Center(
                          child: SelectableText(data),
                        );
                      })),
                      DataCell(Builder(builder: (context) {
                        String data =
                            reversedTransfers[index].sender.toString();
                        return Center(
                          child: SelectableText(data),
                        );
                      })),
                      DataCell(Builder(builder: (context) {
                        String data = reversedTransfers[index].proof.toString();
                        return Center(
                          child: SelectableText(data),
                        );
                      })),
                      DataCell(Builder(builder: (context) {
                        String data = '';
                        var payload = reversedTransfers[index].payload_rpc;
                        if (payload != null) {
                          data = payload[0]['value'].toString();
                        } else {
                          data = '/';
                        }
                        return Center(
                          child: SelectableText(data),
                        );
                      })),
                    ]),
                growable: false);

            return SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: PaginatedDataTable2(
                  minWidth: 600,
                  columnSpacing: 12,
                  columns: kHistoryHeaderDataTable,
                  source: HistoryDataSource(dataRows)),
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

class HistoryDataSource extends DataTableSource {
  final List<DataRow2> _data;

  HistoryDataSource(this._data);

  @override
  DataRow? getRow(int index) {
    return _data[index];
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
