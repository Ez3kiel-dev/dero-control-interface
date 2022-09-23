// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SmartContract _$$_SmartContractFromJson(Map<String, dynamic> json) =>
    _$_SmartContract(
      scid: json['scid'] as String?,
      stringkeys: json['stringkeys'] as Map<String, dynamic>? ?? const {},
      balance: json['balance'] as int? ?? 0,
      code: json['code'] as String? ?? '',
    );

Map<String, dynamic> _$$_SmartContractToJson(_$_SmartContract instance) =>
    <String, dynamic>{
      'scid': instance.scid,
      'stringkeys': instance.stringkeys,
      'balance': instance.balance,
      'code': instance.code,
    };
