import 'package:freezed_annotation/freezed_annotation.dart';

import 'wallet_entry.dart';

part 'wallet.freezed.dart';

part 'wallet.g.dart';

@freezed
class Wallet with _$Wallet {
  const factory Wallet({
    @Default('') String address,
    @Default(0) int height,
    @Default(0) int balance,
    @Default([]) List<Entry> transfers,
    @Default(0) int lastHistoryCheck,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}
