// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Entry _$EntryFromJson(Map<String, dynamic> json) {
  return _Entry.fromJson(json);
}

/// @nodoc
mixin _$Entry {
  int get height => throw _privateConstructorUsedError;
  int get topoheight => throw _privateConstructorUsedError;
  String get blockhash => throw _privateConstructorUsedError;
  int get minerreward => throw _privateConstructorUsedError;
  bool get coinbase => throw _privateConstructorUsedError;
  bool get incoming => throw _privateConstructorUsedError;
  String get txid => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get fees => throw _privateConstructorUsedError;
  String get proof => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  dynamic get payload => throw _privateConstructorUsedError;
  dynamic get payload_rpc => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;
  int get dstport => throw _privateConstructorUsedError;
  int get srcport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryCopyWith<Entry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCopyWith<$Res> {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) then) =
      _$EntryCopyWithImpl<$Res, Entry>;
  @useResult
  $Res call(
      {int height,
      int topoheight,
      String blockhash,
      int minerreward,
      bool coinbase,
      bool incoming,
      String txid,
      String destination,
      int amount,
      int fees,
      String proof,
      String time,
      dynamic data,
      dynamic payload,
      dynamic payload_rpc,
      String sender,
      int dstport,
      int srcport});
}

/// @nodoc
class _$EntryCopyWithImpl<$Res, $Val extends Entry>
    implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? topoheight = null,
    Object? blockhash = null,
    Object? minerreward = null,
    Object? coinbase = null,
    Object? incoming = null,
    Object? txid = null,
    Object? destination = null,
    Object? amount = null,
    Object? fees = null,
    Object? proof = null,
    Object? time = null,
    Object? data = null,
    Object? payload = null,
    Object? payload_rpc = null,
    Object? sender = null,
    Object? dstport = null,
    Object? srcport = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      topoheight: null == topoheight
          ? _value.topoheight
          : topoheight // ignore: cast_nullable_to_non_nullable
              as int,
      blockhash: null == blockhash
          ? _value.blockhash
          : blockhash // ignore: cast_nullable_to_non_nullable
              as String,
      minerreward: null == minerreward
          ? _value.minerreward
          : minerreward // ignore: cast_nullable_to_non_nullable
              as int,
      coinbase: null == coinbase
          ? _value.coinbase
          : coinbase // ignore: cast_nullable_to_non_nullable
              as bool,
      incoming: null == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      txid: null == txid
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as int,
      proof: null == proof
          ? _value.proof
          : proof // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload_rpc: null == payload_rpc
          ? _value.payload_rpc
          : payload_rpc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      dstport: null == dstport
          ? _value.dstport
          : dstport // ignore: cast_nullable_to_non_nullable
              as int,
      srcport: null == srcport
          ? _value.srcport
          : srcport // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntryCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$$_EntryCopyWith(_$_Entry value, $Res Function(_$_Entry) then) =
      __$$_EntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int height,
      int topoheight,
      String blockhash,
      int minerreward,
      bool coinbase,
      bool incoming,
      String txid,
      String destination,
      int amount,
      int fees,
      String proof,
      String time,
      dynamic data,
      dynamic payload,
      dynamic payload_rpc,
      String sender,
      int dstport,
      int srcport});
}

/// @nodoc
class __$$_EntryCopyWithImpl<$Res> extends _$EntryCopyWithImpl<$Res, _$_Entry>
    implements _$$_EntryCopyWith<$Res> {
  __$$_EntryCopyWithImpl(_$_Entry _value, $Res Function(_$_Entry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? topoheight = null,
    Object? blockhash = null,
    Object? minerreward = null,
    Object? coinbase = null,
    Object? incoming = null,
    Object? txid = null,
    Object? destination = null,
    Object? amount = null,
    Object? fees = null,
    Object? proof = null,
    Object? time = null,
    Object? data = null,
    Object? payload = null,
    Object? payload_rpc = null,
    Object? sender = null,
    Object? dstport = null,
    Object? srcport = null,
  }) {
    return _then(_$_Entry(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      topoheight: null == topoheight
          ? _value.topoheight
          : topoheight // ignore: cast_nullable_to_non_nullable
              as int,
      blockhash: null == blockhash
          ? _value.blockhash
          : blockhash // ignore: cast_nullable_to_non_nullable
              as String,
      minerreward: null == minerreward
          ? _value.minerreward
          : minerreward // ignore: cast_nullable_to_non_nullable
              as int,
      coinbase: null == coinbase
          ? _value.coinbase
          : coinbase // ignore: cast_nullable_to_non_nullable
              as bool,
      incoming: null == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      txid: null == txid
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      fees: null == fees
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as int,
      proof: null == proof
          ? _value.proof
          : proof // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload_rpc: null == payload_rpc
          ? _value.payload_rpc
          : payload_rpc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      dstport: null == dstport
          ? _value.dstport
          : dstport // ignore: cast_nullable_to_non_nullable
              as int,
      srcport: null == srcport
          ? _value.srcport
          : srcport // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Entry implements _Entry {
  const _$_Entry(
      {this.height = 0,
      this.topoheight = 0,
      this.blockhash = '',
      this.minerreward = 0,
      this.coinbase = false,
      this.incoming = false,
      this.txid = '',
      this.destination = '',
      this.amount = 0,
      this.fees = 0,
      this.proof = '',
      this.time = '',
      this.data,
      this.payload,
      this.payload_rpc,
      this.sender = '',
      this.dstport = 0,
      this.srcport = 0});

  factory _$_Entry.fromJson(Map<String, dynamic> json) =>
      _$$_EntryFromJson(json);

  @override
  @JsonKey()
  final int height;
  @override
  @JsonKey()
  final int topoheight;
  @override
  @JsonKey()
  final String blockhash;
  @override
  @JsonKey()
  final int minerreward;
  @override
  @JsonKey()
  final bool coinbase;
  @override
  @JsonKey()
  final bool incoming;
  @override
  @JsonKey()
  final String txid;
  @override
  @JsonKey()
  final String destination;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final int fees;
  @override
  @JsonKey()
  final String proof;
  @override
  @JsonKey()
  final String time;
  @override
  final dynamic data;
  @override
  final dynamic payload;
  @override
  final dynamic payload_rpc;
  @override
  @JsonKey()
  final String sender;
  @override
  @JsonKey()
  final int dstport;
  @override
  @JsonKey()
  final int srcport;

  @override
  String toString() {
    return 'Entry(height: $height, topoheight: $topoheight, blockhash: $blockhash, minerreward: $minerreward, coinbase: $coinbase, incoming: $incoming, txid: $txid, destination: $destination, amount: $amount, fees: $fees, proof: $proof, time: $time, data: $data, payload: $payload, payload_rpc: $payload_rpc, sender: $sender, dstport: $dstport, srcport: $srcport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Entry &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.topoheight, topoheight) ||
                other.topoheight == topoheight) &&
            (identical(other.blockhash, blockhash) ||
                other.blockhash == blockhash) &&
            (identical(other.minerreward, minerreward) ||
                other.minerreward == minerreward) &&
            (identical(other.coinbase, coinbase) ||
                other.coinbase == coinbase) &&
            (identical(other.incoming, incoming) ||
                other.incoming == incoming) &&
            (identical(other.txid, txid) || other.txid == txid) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.fees, fees) || other.fees == fees) &&
            (identical(other.proof, proof) || other.proof == proof) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality()
                .equals(other.payload_rpc, payload_rpc) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.dstport, dstport) || other.dstport == dstport) &&
            (identical(other.srcport, srcport) || other.srcport == srcport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      height,
      topoheight,
      blockhash,
      minerreward,
      coinbase,
      incoming,
      txid,
      destination,
      amount,
      fees,
      proof,
      time,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(payload_rpc),
      sender,
      dstport,
      srcport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntryCopyWith<_$_Entry> get copyWith =>
      __$$_EntryCopyWithImpl<_$_Entry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntryToJson(
      this,
    );
  }
}

abstract class _Entry implements Entry {
  const factory _Entry(
      {final int height,
      final int topoheight,
      final String blockhash,
      final int minerreward,
      final bool coinbase,
      final bool incoming,
      final String txid,
      final String destination,
      final int amount,
      final int fees,
      final String proof,
      final String time,
      final dynamic data,
      final dynamic payload,
      final dynamic payload_rpc,
      final String sender,
      final int dstport,
      final int srcport}) = _$_Entry;

  factory _Entry.fromJson(Map<String, dynamic> json) = _$_Entry.fromJson;

  @override
  int get height;
  @override
  int get topoheight;
  @override
  String get blockhash;
  @override
  int get minerreward;
  @override
  bool get coinbase;
  @override
  bool get incoming;
  @override
  String get txid;
  @override
  String get destination;
  @override
  int get amount;
  @override
  int get fees;
  @override
  String get proof;
  @override
  String get time;
  @override
  dynamic get data;
  @override
  dynamic get payload;
  @override
  dynamic get payload_rpc;
  @override
  String get sender;
  @override
  int get dstport;
  @override
  int get srcport;
  @override
  @JsonKey(ignore: true)
  _$$_EntryCopyWith<_$_Entry> get copyWith =>
      throw _privateConstructorUsedError;
}
