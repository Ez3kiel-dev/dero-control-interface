// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Entry _$$_EntryFromJson(Map<String, dynamic> json) => _$_Entry(
      height: json['height'] as int? ?? 0,
      topoheight: json['topoheight'] as int? ?? 0,
      blockhash: json['blockhash'] as String? ?? '',
      minerreward: json['minerreward'] as int? ?? 0,
      coinbase: json['coinbase'] as bool? ?? false,
      incoming: json['incoming'] as bool? ?? false,
      txid: json['txid'] as String? ?? '',
      destination: json['destination'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
      fees: json['fees'] as int? ?? 0,
      proof: json['proof'] as String? ?? '',
      time: json['time'] as String? ?? '',
      data: json['data'],
      payload: json['payload'],
      payload_rpc: json['payload_rpc'],
      sender: json['sender'] as String? ?? '',
      dstport: json['dstport'] as int? ?? 0,
      srcport: json['srcport'] as int? ?? 0,
    );

Map<String, dynamic> _$$_EntryToJson(_$_Entry instance) => <String, dynamic>{
      'height': instance.height,
      'topoheight': instance.topoheight,
      'blockhash': instance.blockhash,
      'minerreward': instance.minerreward,
      'coinbase': instance.coinbase,
      'incoming': instance.incoming,
      'txid': instance.txid,
      'destination': instance.destination,
      'amount': instance.amount,
      'fees': instance.fees,
      'proof': instance.proof,
      'time': instance.time,
      'data': instance.data,
      'payload': instance.payload,
      'payload_rpc': instance.payload_rpc,
      'sender': instance.sender,
      'dstport': instance.dstport,
      'srcport': instance.srcport,
    };
