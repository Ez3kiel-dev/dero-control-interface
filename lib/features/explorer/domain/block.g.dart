// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Block _$$_BlockFromJson(Map<String, dynamic> json) => _$_Block(
      height: json['height'],
      hash: json['hash'],
      difficulty: json['difficulty'],
      txcount: json['txcount'],
      topoheight: json['topoheight'],
      reward: json['reward'],
      timestamp: json['timestamp'],
    );

Map<String, dynamic> _$$_BlockToJson(_$_Block instance) => <String, dynamic>{
      'height': instance.height,
      'hash': instance.hash,
      'difficulty': instance.difficulty,
      'txcount': instance.txcount,
      'topoheight': instance.topoheight,
      'reward': instance.reward,
      'timestamp': instance.timestamp,
    };
