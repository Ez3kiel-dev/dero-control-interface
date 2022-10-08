import 'package:dero_control_interface/shared/application/derod_queries_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider =
    FutureProvider.autoDispose.family<dynamic, String>((ref, input) async {
  if (input.length == 64) {
    try {
      // TX ?
      var tx = await ref.watch(getTransactionProvider(input).future);
      return tx;
    } catch (e) {
      debugPrint(e.toString());
      try {
        // BLOCK ?
        var block = await ref.watch(getBlockProvider(input).future);
        // debugPrint('block found');
        return block;
      } catch (e) {
        debugPrint(e.toString());
        try {
          // SC ?
          var sc = await ref.watch(getSmartContractProvider(input).future);
          return sc;
        } catch (e) {
          debugPrint(e.toString());
        }
      }
    }
  } else if (input.length < 64) {
    var value = int.tryParse(input);
    if (value != null) {
      // BLOCK BY HEIHGT ?
      try {
        var block = await ref.watch(getBlockByHeightProvider(value).future);
        return block;
      } catch (e) {
        debugPrint(e.toString());
      }
    } else {
      // NAME TO ADDRESS ?
      try {
        var account = await ref.watch(getNameToAddressProvider(input).future);
        return account;
      } catch (e) {
        debugPrint(e.toString());
      }
    }
  }
  return null;
});