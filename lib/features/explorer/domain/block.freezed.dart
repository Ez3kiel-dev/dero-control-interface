// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Block _$BlockFromJson(Map<String, dynamic> json) {
  return _Block.fromJson(json);
}

/// @nodoc
mixin _$Block {
  dynamic get height => throw _privateConstructorUsedError;
  dynamic get hash => throw _privateConstructorUsedError;
  dynamic get difficulty => throw _privateConstructorUsedError;
  dynamic get txcount => throw _privateConstructorUsedError;
  dynamic get topoheight => throw _privateConstructorUsedError;
  dynamic get reward => throw _privateConstructorUsedError;
  dynamic get miners => throw _privateConstructorUsedError;
  dynamic get tips => throw _privateConstructorUsedError;
  dynamic get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockCopyWith<Block> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockCopyWith<$Res> {
  factory $BlockCopyWith(Block value, $Res Function(Block) then) =
      _$BlockCopyWithImpl<$Res, Block>;
  @useResult
  $Res call(
      {dynamic height,
      dynamic hash,
      dynamic difficulty,
      dynamic txcount,
      dynamic topoheight,
      dynamic reward,
      dynamic miners,
      dynamic tips,
      dynamic timestamp});
}

/// @nodoc
class _$BlockCopyWithImpl<$Res, $Val extends Block>
    implements $BlockCopyWith<$Res> {
  _$BlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? hash = freezed,
    Object? difficulty = freezed,
    Object? txcount = freezed,
    Object? topoheight = freezed,
    Object? reward = freezed,
    Object? miners = freezed,
    Object? tips = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as dynamic,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      txcount: freezed == txcount
          ? _value.txcount
          : txcount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      topoheight: freezed == topoheight
          ? _value.topoheight
          : topoheight // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as dynamic,
      miners: freezed == miners
          ? _value.miners
          : miners // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tips: freezed == tips
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlockCopyWith<$Res> implements $BlockCopyWith<$Res> {
  factory _$$_BlockCopyWith(_$_Block value, $Res Function(_$_Block) then) =
      __$$_BlockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic height,
      dynamic hash,
      dynamic difficulty,
      dynamic txcount,
      dynamic topoheight,
      dynamic reward,
      dynamic miners,
      dynamic tips,
      dynamic timestamp});
}

/// @nodoc
class __$$_BlockCopyWithImpl<$Res> extends _$BlockCopyWithImpl<$Res, _$_Block>
    implements _$$_BlockCopyWith<$Res> {
  __$$_BlockCopyWithImpl(_$_Block _value, $Res Function(_$_Block) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? hash = freezed,
    Object? difficulty = freezed,
    Object? txcount = freezed,
    Object? topoheight = freezed,
    Object? reward = freezed,
    Object? miners = freezed,
    Object? tips = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$_Block(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as dynamic,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as dynamic,
      txcount: freezed == txcount
          ? _value.txcount
          : txcount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      topoheight: freezed == topoheight
          ? _value.topoheight
          : topoheight // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as dynamic,
      miners: freezed == miners
          ? _value.miners
          : miners // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tips: freezed == tips
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Block implements _Block {
  const _$_Block(
      {required this.height,
      required this.hash,
      required this.difficulty,
      required this.txcount,
      required this.topoheight,
      required this.reward,
      required this.miners,
      required this.tips,
      required this.timestamp});

  factory _$_Block.fromJson(Map<String, dynamic> json) =>
      _$$_BlockFromJson(json);

  @override
  final dynamic height;
  @override
  final dynamic hash;
  @override
  final dynamic difficulty;
  @override
  final dynamic txcount;
  @override
  final dynamic topoheight;
  @override
  final dynamic reward;
  @override
  final dynamic miners;
  @override
  final dynamic tips;
  @override
  final dynamic timestamp;

  @override
  String toString() {
    return 'Block(height: $height, hash: $hash, difficulty: $difficulty, txcount: $txcount, topoheight: $topoheight, reward: $reward, miners: $miners, tips: $tips, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Block &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.hash, hash) &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty) &&
            const DeepCollectionEquality().equals(other.txcount, txcount) &&
            const DeepCollectionEquality()
                .equals(other.topoheight, topoheight) &&
            const DeepCollectionEquality().equals(other.reward, reward) &&
            const DeepCollectionEquality().equals(other.miners, miners) &&
            const DeepCollectionEquality().equals(other.tips, tips) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(hash),
      const DeepCollectionEquality().hash(difficulty),
      const DeepCollectionEquality().hash(txcount),
      const DeepCollectionEquality().hash(topoheight),
      const DeepCollectionEquality().hash(reward),
      const DeepCollectionEquality().hash(miners),
      const DeepCollectionEquality().hash(tips),
      const DeepCollectionEquality().hash(timestamp));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlockCopyWith<_$_Block> get copyWith =>
      __$$_BlockCopyWithImpl<_$_Block>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockToJson(
      this,
    );
  }
}

abstract class _Block implements Block {
  const factory _Block(
      {required final dynamic height,
      required final dynamic hash,
      required final dynamic difficulty,
      required final dynamic txcount,
      required final dynamic topoheight,
      required final dynamic reward,
      required final dynamic miners,
      required final dynamic tips,
      required final dynamic timestamp}) = _$_Block;

  factory _Block.fromJson(Map<String, dynamic> json) = _$_Block.fromJson;

  @override
  dynamic get height;
  @override
  dynamic get hash;
  @override
  dynamic get difficulty;
  @override
  dynamic get txcount;
  @override
  dynamic get topoheight;
  @override
  dynamic get reward;
  @override
  dynamic get miners;
  @override
  dynamic get tips;
  @override
  dynamic get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_BlockCopyWith<_$_Block> get copyWith =>
      throw _privateConstructorUsedError;
}
