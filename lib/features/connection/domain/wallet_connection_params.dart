import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_connection_params.freezed.dart';

@freezed
class WalletConnectionParams with _$WalletConnectionParams {
  const factory WalletConnectionParams(
      {@Default('') String sessionUuid,
      @Default('') String address,
      @Default('') String user,
      @Default('') String password}) = _MyWalletConnectionParams;
}