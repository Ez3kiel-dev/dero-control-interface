import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_transfer.freezed.dart';

@freezed
class Transfer with _$Transfer {
  const factory Transfer(
      {required String destination,
      required int amount, // dero atomic unit
      required int ringsize,
      required String comment}) = _Transfer;
}
