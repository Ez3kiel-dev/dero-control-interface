import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_entry.freezed.dart';

part 'wallet_entry.g.dart';

@freezed
class Entry with _$Entry {
  const factory Entry({
    @Default(0) int height,
    @Default(0) int topoheight,
    @Default('') String blockhash,
    @Default(0) int minerreward,
    @Default(false) bool coinbase,
    @Default(false) bool incoming,
    @Default('') String txid,
    @Default('') String destination,
    @Default(0) int amount,
    @Default(0) int fees,
    @Default('') String proof,
    @Default('') String time,
    dynamic data,
    dynamic payload,
    dynamic payload_rpc,
    @Default('') String sender,
    @Default(0) int dstport,
    @Default(0) int srcport,
  }) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}