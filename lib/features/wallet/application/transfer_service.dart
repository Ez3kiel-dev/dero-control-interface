import 'package:dero_control_interface/features/wallet/domain/basic_transfer.dart';
import 'package:dero_control_interface/features/wallet/domain/transfer_result.dart';
import 'package:dero_control_interface/shared/data/wallet_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransferResultNotifier extends StateNotifier<TransferResult> {
  final Reader read;

  TransferResultNotifier(this.read) : super(const TransferResult());

  Future<void> sendDero(Transfer transfer) async {
    state = state.copyWith(transferState: TransferState.submitted);

    try {
      var msg = transfer.comment.isEmpty
          ? {
              'transfers': [
                {
                  'destination': transfer.destination,
                  'amount': transfer.amount,
                }
              ],
              'ringsize': transfer.ringsize,
            }
          : {
              'transfers': [
                {
                  'destination': transfer.destination,
                  'amount': transfer.amount,
                  'payload_rpc': [
                    {
                      'name': 'C',
                      'datatype': 'S',
                      'value': transfer.comment,
                    }
                  ],
                }
              ],
              'ringsize': transfer.ringsize,
            };

      var result = await read(walletRpcClientProvider).transfer(msg);
      debugPrint(result.toString());
      if (result['txid'].toString().isNotEmpty) {
        state = TransferResult(
            transferState: TransferState.successful,
            data: result['txid'].toString());
      } else {
        state = const TransferResult(
            transferState: TransferState.failure,
            data: 'Transaction failure : No txid');
      }
    } catch (error) {
      state = TransferResult(
          transferState: TransferState.failure,
          data: 'Transaction failure : ${error.toString()}');
    }
  }

  Future<void> registerName(String name) async {
    state = state.copyWith(transferState: TransferState.submitted);

    try {
      var scidOfficialNameService =
          '0000000000000000000000000000000000000000000000000000000000000001';
      var msg = {
        'scid': scidOfficialNameService,
        'sc_rpc': [
          {
            'name': 'entrypoint',
            'datatype': 'S',
            'value': 'Register',
          },
          {
            'name': 'name',
            'datatype': 'S',
            'value': name,
          }
        ],
        'ringsize': 2,
      };

      var result = await read(walletRpcClientProvider).scInvoke(msg);

      if (result['txid'].toString().isNotEmpty) {
        state = TransferResult(
            transferState: TransferState.successful,
            data: result['txid'].toString());
      } else {
        state = const TransferResult(
            transferState: TransferState.failure,
            data: 'Transaction failure : No txid');
      }
    } catch (error) {
      state = TransferResult(
          transferState: TransferState.failure,
          data: 'Transaction failure : ${error.toString()}');
    }
  }
}

final transferResultProvider =
    StateNotifierProvider.autoDispose<TransferResultNotifier, TransferResult>(
        (ref) {
  return TransferResultNotifier(ref.read);
});