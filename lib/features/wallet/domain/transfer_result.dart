import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_result.freezed.dart';

enum TransferState {
  pending,
  submitted,
  successful,
  failure,
}

@freezed
class TransferResult with _$TransferResult {
  const factory TransferResult(
      {@Default(TransferState.pending) TransferState transferState,
      @Default('') String data}) = _TransferResult;
}