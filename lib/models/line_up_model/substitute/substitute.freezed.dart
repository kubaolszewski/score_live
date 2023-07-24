// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'substitute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Substitute _$SubstituteFromJson(Map<String, dynamic> json) {
  return _Substitute.fromJson(json);
}

/// @nodoc
mixin _$Substitute {
  SubstitutePlayer? get player => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstituteCopyWith<Substitute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstituteCopyWith<$Res> {
  factory $SubstituteCopyWith(
          Substitute value, $Res Function(Substitute) then) =
      _$SubstituteCopyWithImpl<$Res, Substitute>;
  @useResult
  $Res call({SubstitutePlayer? player});

  $SubstitutePlayerCopyWith<$Res>? get player;
}

/// @nodoc
class _$SubstituteCopyWithImpl<$Res, $Val extends Substitute>
    implements $SubstituteCopyWith<$Res> {
  _$SubstituteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = freezed,
  }) {
    return _then(_value.copyWith(
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as SubstitutePlayer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubstitutePlayerCopyWith<$Res>? get player {
    if (_value.player == null) {
      return null;
    }

    return $SubstitutePlayerCopyWith<$Res>(_value.player!, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SubstituteCopyWith<$Res>
    implements $SubstituteCopyWith<$Res> {
  factory _$$_SubstituteCopyWith(
          _$_Substitute value, $Res Function(_$_Substitute) then) =
      __$$_SubstituteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubstitutePlayer? player});

  @override
  $SubstitutePlayerCopyWith<$Res>? get player;
}

/// @nodoc
class __$$_SubstituteCopyWithImpl<$Res>
    extends _$SubstituteCopyWithImpl<$Res, _$_Substitute>
    implements _$$_SubstituteCopyWith<$Res> {
  __$$_SubstituteCopyWithImpl(
      _$_Substitute _value, $Res Function(_$_Substitute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = freezed,
  }) {
    return _then(_$_Substitute(
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as SubstitutePlayer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Substitute implements _Substitute {
  const _$_Substitute({this.player});

  factory _$_Substitute.fromJson(Map<String, dynamic> json) =>
      _$$_SubstituteFromJson(json);

  @override
  final SubstitutePlayer? player;

  @override
  String toString() {
    return 'Substitute(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Substitute &&
            (identical(other.player, player) || other.player == player));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubstituteCopyWith<_$_Substitute> get copyWith =>
      __$$_SubstituteCopyWithImpl<_$_Substitute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubstituteToJson(
      this,
    );
  }
}

abstract class _Substitute implements Substitute {
  const factory _Substitute({final SubstitutePlayer? player}) = _$_Substitute;

  factory _Substitute.fromJson(Map<String, dynamic> json) =
      _$_Substitute.fromJson;

  @override
  SubstitutePlayer? get player;
  @override
  @JsonKey(ignore: true)
  _$$_SubstituteCopyWith<_$_Substitute> get copyWith =>
      throw _privateConstructorUsedError;
}

SubstitutePlayer _$SubstitutePlayerFromJson(Map<String, dynamic> json) {
  return _SubstitutePlayer.fromJson(json);
}

/// @nodoc
mixin _$SubstitutePlayer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get pos => throw _privateConstructorUsedError;
  dynamic get grid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstitutePlayerCopyWith<SubstitutePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstitutePlayerCopyWith<$Res> {
  factory $SubstitutePlayerCopyWith(
          SubstitutePlayer value, $Res Function(SubstitutePlayer) then) =
      _$SubstitutePlayerCopyWithImpl<$Res, SubstitutePlayer>;
  @useResult
  $Res call({int? id, String? name, int? number, String? pos, dynamic grid});
}

/// @nodoc
class _$SubstitutePlayerCopyWithImpl<$Res, $Val extends SubstitutePlayer>
    implements $SubstitutePlayerCopyWith<$Res> {
  _$SubstitutePlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? pos = freezed,
    Object? grid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      pos: freezed == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _value.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubstitutePlayerCopyWith<$Res>
    implements $SubstitutePlayerCopyWith<$Res> {
  factory _$$_SubstitutePlayerCopyWith(
          _$_SubstitutePlayer value, $Res Function(_$_SubstitutePlayer) then) =
      __$$_SubstitutePlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? number, String? pos, dynamic grid});
}

/// @nodoc
class __$$_SubstitutePlayerCopyWithImpl<$Res>
    extends _$SubstitutePlayerCopyWithImpl<$Res, _$_SubstitutePlayer>
    implements _$$_SubstitutePlayerCopyWith<$Res> {
  __$$_SubstitutePlayerCopyWithImpl(
      _$_SubstitutePlayer _value, $Res Function(_$_SubstitutePlayer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? pos = freezed,
    Object? grid = freezed,
  }) {
    return _then(_$_SubstitutePlayer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      pos: freezed == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _value.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubstitutePlayer implements _SubstitutePlayer {
  const _$_SubstitutePlayer(
      {this.id, this.name, this.number, this.pos, this.grid});

  factory _$_SubstitutePlayer.fromJson(Map<String, dynamic> json) =>
      _$$_SubstitutePlayerFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? number;
  @override
  final String? pos;
  @override
  final dynamic grid;

  @override
  String toString() {
    return 'SubstitutePlayer(id: $id, name: $name, number: $number, pos: $pos, grid: $grid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubstitutePlayer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.pos, pos) || other.pos == pos) &&
            const DeepCollectionEquality().equals(other.grid, grid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, number, pos,
      const DeepCollectionEquality().hash(grid));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubstitutePlayerCopyWith<_$_SubstitutePlayer> get copyWith =>
      __$$_SubstitutePlayerCopyWithImpl<_$_SubstitutePlayer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubstitutePlayerToJson(
      this,
    );
  }
}

abstract class _SubstitutePlayer implements SubstitutePlayer {
  const factory _SubstitutePlayer(
      {final int? id,
      final String? name,
      final int? number,
      final String? pos,
      final dynamic grid}) = _$_SubstitutePlayer;

  factory _SubstitutePlayer.fromJson(Map<String, dynamic> json) =
      _$_SubstitutePlayer.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get number;
  @override
  String? get pos;
  @override
  dynamic get grid;
  @override
  @JsonKey(ignore: true)
  _$$_SubstitutePlayerCopyWith<_$_SubstitutePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}
