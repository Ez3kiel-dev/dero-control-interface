import 'package:dero_control_interface/features/wallet/application/wallet_service.dart';
import 'package:dero_control_interface/features/wallet/domain/address_book.dart';
import 'package:dero_control_interface/shared/application/derod_queries_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddressBookNotifier extends StateNotifier<AddressBook> {
  final Ref ref;

  AddressBookNotifier(this.ref) : super(const AddressBook());

  Future<void> processData(Map stringKeys) async {
    _setSC(stringKeys);
    await _getDecompressedAddresses();
    _sortNameToAddressMap();
  }

  void _setSC(Map stringKeys) {
    state = state.copyWith(originalNameToAddressMap: stringKeys);
  }

  Future<void> _getDecompressedAddresses() async {
    final dAddressesMap = Map.of(state.decompressedAddresses);
    for (final entry in state.originalNameToAddressMap.entries) {
      final key = entry.key;
      final value = entry.value;
      if (!dAddressesMap.containsKey(value) && key != 'C') {
        try {
          var account = await ref.read(getNameToAddressProvider(key).future);
          dAddressesMap[value] = account.address;
        } catch (error) {
          debugPrint(error.toString());
          dAddressesMap[value] = 'Not Found';
        }
      }
    }
    state = state.copyWith(decompressedAddresses: dAddressesMap);
  }

  void _sortNameToAddressMap() {
    var newSortedMap = {};
    state.originalNameToAddressMap.forEach((key, value) {
      var decompressedAddress = state.decompressedAddresses[value];
      if (newSortedMap.containsKey(decompressedAddress)) {
        newSortedMap[decompressedAddress] = [
          key,
          ...newSortedMap[decompressedAddress]
        ];
      } else {
        newSortedMap[decompressedAddress] = [key];
      }
    });
    state = state.copyWith(sortedNameToAddressMap: newSortedMap);
  }
}

final addressBookProvider =
    StateNotifierProvider<AddressBookNotifier, AddressBook>((ref) {
  return AddressBookNotifier(ref);
});

final loadAddressBookProvider =
    FutureProvider.autoDispose<AddressBook>((ref) async {
  var data = await ref.watch(getVariablesNameServiceProvider.future);
  await ref.watch(addressBookProvider.notifier).processData(data.stringkeys);
  return ref.watch(addressBookProvider);
});

final loadAlreadyRegisterNamesProvider =
    FutureProvider.autoDispose<String>((ref) async {
  var data = await ref.watch(getVariablesNameServiceProvider.future);
  await ref.watch(addressBookProvider.notifier).processData(data.stringkeys);

  Map addressToNameMap = ref.watch(addressBookProvider
      .select((addressBook) => addressBook.sortedNameToAddressMap));
  String myAddress =
      ref.watch(walletProvider.select((wallet) => wallet.address));

  String res = addressToNameMap.containsKey(myAddress)
      ? (addressToNameMap[myAddress]..sort()).toString()
      : '/';

  return res;
});