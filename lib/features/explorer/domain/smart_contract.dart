import 'package:freezed_annotation/freezed_annotation.dart';

part 'smart_contract.freezed.dart';

part 'smart_contract.g.dart';

@freezed
class SmartContract with _$SmartContract {
  const factory SmartContract(
      {String? scid,
      @Default({}) Map<String, dynamic> stringkeys,
      @Default(0) int balance,
      @Default('') String code}) = _SmartContract;

  factory SmartContract.fromJson(Map<String, dynamic> json) =>
      _$SmartContractFromJson(json);
}