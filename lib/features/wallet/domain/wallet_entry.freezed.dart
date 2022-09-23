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
      _$EntryCopyWithImpl<$Res>;
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
class _$EntryCopyWithImpl<$Res> implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  final Entry _value;
  // ignore: unused_field
  final $Res Function(Entry) _then;

  @override
  $Res call({
    Object? height = freezed,
    Object? topoheight = freezed,
    Object? blockhash = freezed,
    Object? minerreward = freezed,
    Object? coinbase = freezed,
    Object? incoming = freezed,
    Object? txid = freezed,
    Object? destination = freezed,
    Object? amount = freezed,
    Object? fees = freezed,
    Object? proof = freezed,
    Object? time = freezed,
    Object? data = freezed,
    Object? payload = freezed,
    Object? payload_rpc = freezed,
    Object? sender = freezed,
    Object? dstport = freezed,
    Object? srcport = freezed,
  }) {
    return _then(_value.copyWith(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      topoheight: topoheight == freezed
          ? _value.topoheight
          : topoheight // ignore: cast_nullable_to_non_nullable
              as int,
      blockhash: blockhash == freezed
          ? _value.blockhash
          : blockhash // ignore: cast_nullable_to_non_nullable
              as String,
      minerreward: minerreward == freezed
          ? _value.minerreward
          : minerreward // ignore: cast_nullable_to_non_nullable
              as int,
      coinbase: coinbase == freezed
          ? _value.coinbase
          : coinbase // ignore: cast_nullable_to_non_nullable
              as bool,
      incoming: incoming == freezed
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      fees: fees == freezed
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as int,
      proof: proof == freezed
          ? _value.proof
          : proof // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload_rpc: payload_rpc == freezed
          ? _value.payload_rpc
          : payload_rpc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      dstport: dstport == freezed
          ? _value.dstport
          : dstport // ignore: cast_nullable_to_non_nullable
              as int,
      srcport: srcport == freezed
          ? _value.srcport
          : srcport // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_EntryCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$$_EntryCopyWith(_$_Entry value, $Res Function(_$_Entry) then) =
      __$$_EntryCopyWithImpl<$Res>;
  @override
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
class __$$_EntryCopyWithImpl<$Res> extends _$EntryCopyWithImpl<$Res>
    implements _$$_EntryCopyWith<$Res> {
  __$$_EntryCopyWithImpl(_$_Entry _value, $Res Function(_$_Entry) _then)
      : super(_value, (v) => _then(v as _$_Entry));

  @override
  _$_Entry get _value => super._value as _$_Entry;

  @override
  $Res call({
    Object? height = freezed,
    Object? topoheight = freezed,
    Object? blockhash = freezed,
    Object? minerreward = freezed,
    Object? coinbase = freezed,
    Object? incoming = freezed,
    Object? txid = freezed,
    Object? destination = freezed,
    Object? amount = freezed,
    Object? fees = freezed,
    Object? proof = freezed,
    Object? time = freezed,
    Object? data = freezed,
    Object? payload = freezed,
    Object? payload_rpc = freezed,
    Object? sender = freezed,
    Object? dstport = freezed,
    Object? srcport = freezed,
  }) {
    return _then(_$_Entry(
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      topoheight: topoheight == freezed
          ? _value.topoheight
          : topoheight // ignore: cast_nullable_to_non_nullable
              as int,
      blockhash: blockhash == freezed
          ? _value.blockhash
          : blockhash // ignore: cast_nullable_to_non_nullable
              as String,
      minerreward: minerreward == freezed
          ? _value.minerreward
          : minerreward // ignore: cast_nullable_to_non_nullable
              as int,
      coinbase: coinbase == freezed
          ? _value.coinbase
          : coinbase // ignore: cast_nullable_to_non_nullable
              as bool,
      incoming: incoming == freezed
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      txid: txid == freezed
          ? _value.txid
          : txid // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      fees: fees == freezed
          ? _value.fees
          : fees // ignore: cast_nullable_to_non_nullable
              as int,
      proof: proof == freezed
          ? _value.proof
          : proof // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload_rpc: payload_rpc == freezed
          ? _value.payload_rpc
          : payload_rpc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      dstport: dstport == freezed
          ? _value.dstport
          : dstport // ignore: cast_nullable_to_non_nullable
              as int,
      srcport: srcport == freezed
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
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality()
                .equals(other.topoheight, topoheight) &&
            const DeepCollectionEquality().equals(other.blockhash, blockhash) &&
            const DeepCollectionEquality()
                .equals(other.minerreward, minerreward) &&
            const DeepCollectionEquality().equals(other.coinbase, coinbase) &&
            const DeepCollectionEquality().equals(other.incoming, incoming) &&
            const DeepCollectionEquality().equals(other.txid, txid) &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.fees, fees) &&
            const DeepCollectionEquality().equals(other.proof, proof) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality()
                .equals(other.payload_rpc, payload_rpc) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.dstport, dstport) &&
            const DeepCollectionEquality().equals(other.srcport, srcport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(topoheight),
      const DeepCollectionEquality().hash(blockhash),
      const DeepCollectionEquality().hash(minerreward),
      const DeepCollectionEquality().hash(coinbase),
      const DeepCollectionEquality().hash(incoming),
      const DeepCollectionEquality().hash(txid),
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(fees),
      const DeepCollectionEquality().hash(proof),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(payload_rpc),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(dstport),
      const DeepCollectionEquality().hash(srcport));

  @JsonKey(ignore: true)
  @override
  _$$_EntryCopyWith<_$_Entry> get copyWith =>
      __$$_EntryCopyWithImpl<_$_Entry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntryToJson(this);
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
  int get height => throw _privateConstructorUsedError;
  @override
  int get topoheight => throw _privateConstructorUsedError;
  @override
  String get blockhash => throw _privateConstructorUsedError;
  @override
  int get minerreward => throw _privateConstructorUsedError;
  @override
  bool get coinbase => throw _privateConstructorUsedError;
  @override
  bool get incoming => throw _privateConstructorUsedError;
  @override
  String get txid => throw _privateConstructorUsedError;
  @override
  String get destination => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get fees => throw _privateConstructorUsedError;
  @override
  String get proof => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  dynamic get data => throw _privateConstructorUsedError;
  @override
  dynamic get payload => throw _privateConstructorUsedError;
  @override
  dynamic get payload_rpc => throw _privateConstructorUsedError;
  @override
  String get sender => throw _privateConstructorUsedError;
  @override
  int get dstport => throw _privateConstructorUsedError;
  @override
  int get srcport => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EntryCopyWith<_$_Entry> get copyWith =>
      throw _privateConstructorUsedError;
}
