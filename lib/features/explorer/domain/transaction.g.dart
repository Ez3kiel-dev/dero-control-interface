// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      hash: json['hash'] as String,
      height: json['height'] as int?,
      blockHash: json['blockHash'] as String?,
      ringSize: json['ringSize'] as int?,
      signer: json['signer'] as String?,
      ring: json['ring'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'height': instance.height,
      'blockHash': instance.blockHash,
      'ringSize': instance.ringSize,
      'signer': instance.signer,
      'ring': instance.ring,
    };
