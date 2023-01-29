// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressBook {
  Map<dynamic, dynamic> get originalNameToAddressMap =>
      throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get sortedNameToAddressMap =>
      throw _privateConstructorUsedError;
  Map<String, String> get decompressedAddresses =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressBookCopyWith<AddressBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressBookCopyWith<$Res> {
  factory $AddressBookCopyWith(
          AddressBook value, $Res Function(AddressBook) then) =
      _$AddressBookCopyWithImpl<$Res, AddressBook>;
  @useResult
  $Res call(
      {Map<dynamic, dynamic> originalNameToAddressMap,
      Map<dynamic, dynamic> sortedNameToAddressMap,
      Map<String, String> decompressedAddresses});
}

/// @nodoc
class _$AddressBookCopyWithImpl<$Res, $Val extends AddressBook>
    implements $AddressBookCopyWith<$Res> {
  _$AddressBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalNameToAddressMap = null,
    Object? sortedNameToAddressMap = null,
    Object? decompressedAddresses = null,
  }) {
    return _then(_value.copyWith(
      originalNameToAddressMap: null == originalNameToAddressMap
          ? _value.originalNameToAddressMap
          : originalNameToAddressMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      sortedNameToAddressMap: null == sortedNameToAddressMap
          ? _value.sortedNameToAddressMap
          : sortedNameToAddressMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      decompressedAddresses: null == decompressedAddresses
          ? _value.decompressedAddresses
          : decompressedAddresses // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressBookCopyWith<$Res>
    implements $AddressBookCopyWith<$Res> {
  factory _$$_AddressBookCopyWith(
          _$_AddressBook value, $Res Function(_$_AddressBook) then) =
      __$$_AddressBookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<dynamic, dynamic> originalNameToAddressMap,
      Map<dynamic, dynamic> sortedNameToAddressMap,
      Map<String, String> decompressedAddresses});
}

/// @nodoc
class __$$_AddressBookCopyWithImpl<$Res>
    extends _$AddressBookCopyWithImpl<$Res, _$_AddressBook>
    implements _$$_AddressBookCopyWith<$Res> {
  __$$_AddressBookCopyWithImpl(
      _$_AddressBook _value, $Res Function(_$_AddressBook) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalNameToAddressMap = null,
    Object? sortedNameToAddressMap = null,
    Object? decompressedAddresses = null,
  }) {
    return _then(_$_AddressBook(
      originalNameToAddressMap: null == originalNameToAddressMap
          ? _value._originalNameToAddressMap
          : originalNameToAddressMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      sortedNameToAddressMap: null == sortedNameToAddressMap
          ? _value._sortedNameToAddressMap
          : sortedNameToAddressMap // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      decompressedAddresses: null == decompressedAddresses
          ? _value._decompressedAddresses
          : decompressedAddresses // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_AddressBook implements _AddressBook {
  const _$_AddressBook(
      {final Map<dynamic, dynamic> originalNameToAddressMap = const {},
      final Map<dynamic, dynamic> sortedNameToAddressMap = const {},
      final Map<String, String> decompressedAddresses = const {}})
      : _originalNameToAddressMap = originalNameToAddressMap,
        _sortedNameToAddressMap = sortedNameToAddressMap,
        _decompressedAddresses = decompressedAddresses;

  final Map<dynamic, dynamic> _originalNameToAddressMap;
  @override
  @JsonKey()
  Map<dynamic, dynamic> get originalNameToAddressMap {
    if (_originalNameToAddressMap is EqualUnmodifiableMapView)
      return _originalNameToAddressMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_originalNameToAddressMap);
  }

  final Map<dynamic, dynamic> _sortedNameToAddressMap;
  @override
  @JsonKey()
  Map<dynamic, dynamic> get sortedNameToAddressMap {
    if (_sortedNameToAddressMap is EqualUnmodifiableMapView)
      return _sortedNameToAddressMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sortedNameToAddressMap);
  }

  final Map<String, String> _decompressedAddresses;
  @override
  @JsonKey()
  Map<String, String> get decompressedAddresses {
    if (_decompressedAddresses is EqualUnmodifiableMapView)
      return _decompressedAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_decompressedAddresses);
  }

  @override
  String toString() {
    return 'AddressBook(originalNameToAddressMap: $originalNameToAddressMap, sortedNameToAddressMap: $sortedNameToAddressMap, decompressedAddresses: $decompressedAddresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressBook &&
            const DeepCollectionEquality().equals(
                other._originalNameToAddressMap, _originalNameToAddressMap) &&
            const DeepCollectionEquality().equals(
                other._sortedNameToAddressMap, _sortedNameToAddressMap) &&
            const DeepCollectionEquality()
                .equals(other._decompressedAddresses, _decompressedAddresses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_originalNameToAddressMap),
      const DeepCollectionEquality().hash(_sortedNameToAddressMap),
      const DeepCollectionEquality().hash(_decompressedAddresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressBookCopyWith<_$_AddressBook> get copyWith =>
      __$$_AddressBookCopyWithImpl<_$_AddressBook>(this, _$identity);
}

abstract class _AddressBook implements AddressBook {
  const factory _AddressBook(
      {final Map<dynamic, dynamic> originalNameToAddressMap,
      final Map<dynamic, dynamic> sortedNameToAddressMap,
      final Map<String, String> decompressedAddresses}) = _$_AddressBook;

  @override
  Map<dynamic, dynamic> get originalNameToAddressMap;
  @override
  Map<dynamic, dynamic> get sortedNameToAddressMap;
  @override
  Map<String, String> get decompressedAddresses;
  @override
  @JsonKey(ignore: true)
  _$$_AddressBookCopyWith<_$_AddressBook> get copyWith =>
      throw _privateConstructorUsedError;
}
