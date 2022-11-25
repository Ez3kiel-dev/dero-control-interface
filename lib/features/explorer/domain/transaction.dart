import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String hash,
    int? height,
    String? blockHash,
    int? ringSize,
    String? signer,
    List<dynamic>? ring,
  }) = _Transaction;

  factory Transaction.fromRaw(String hash, dynamic data) => Transaction(
      hash: hash,
      height: data['txs'][0]['block_height'],
      blockHash: data['txs'][0]['valid_block'].length == 0
          ? 'REGISTRATION'
          : data['txs'][0]['valid_block'].toString(),
      ringSize:
          data['txs'][0]['ring'] != null ? data['txs'][0]['ring'][0].length : 0,
      signer: data['txs'][0]['signer'].length == 0
          ? 'No'
          : data['txs'][0]['signer'].toString(),
      ring: (data['txs'][0]['ring'][0] as List<dynamic>));

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}