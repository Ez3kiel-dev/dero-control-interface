import 'package:freezed_annotation/freezed_annotation.dart';

part 'block.freezed.dart';

part 'block.g.dart';

@freezed
class Block with _$Block {
  const factory Block(
      {required dynamic height,
      required dynamic hash,
      required dynamic difficulty,
      required dynamic txcount,
      required dynamic topoheight,
      required dynamic reward,
      required dynamic miners,
      required dynamic tips,
      required dynamic timestamp}) = _Block;

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);
}