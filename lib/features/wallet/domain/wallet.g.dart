// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      address: json['address'] as String? ?? '',
      height: json['height'] as int? ?? 0,
      balance: json['balance'] as int? ?? 0,
      transfers: (json['transfers'] as List<dynamic>?)
              ?.map((e) => Entry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastHistoryCheck: json['lastHistoryCheck'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'address': instance.address,
      'height': instance.height,
      'balance': instance.balance,
      'transfers': instance.transfers,
      'lastHistoryCheck': instance.lastHistoryCheck,
    };
