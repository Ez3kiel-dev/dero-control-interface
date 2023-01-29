import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_book.freezed.dart';

@freezed
class AddressBook with _$AddressBook {
  const factory AddressBook(
      {@Default({}) Map originalNameToAddressMap,
      @Default({}) Map sortedNameToAddressMap,
      @Default({}) Map<String, String> decompressedAddresses}) = _AddressBook;
}
