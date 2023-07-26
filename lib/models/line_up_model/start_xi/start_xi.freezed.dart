// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_xi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartXI _$StartXIFromJson(Map<String, dynamic> json) {
  return _StartXi.fromJson(json);
}

/// @nodoc
mixin _$StartXI {
  StartXIPlayer? get player => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartXICopyWith<StartXI> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartXICopyWith<$Res> {
  factory $StartXICopyWith(StartXI value, $Res Function(StartXI) then) =
      _$StartXICopyWithImpl<$Res, StartXI>;
  @useResult
  $Res call({StartXIPlayer? player});

  $StartXIPlayerCopyWith<$Res>? get player;
}

/// @nodoc
class _$StartXICopyWithImpl<$Res, $Val extends StartXI>
    implements $StartXICopyWith<$Res> {
  _$StartXICopyWithImpl(this._value, this._then);

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
              as StartXIPlayer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StartXIPlayerCopyWith<$Res>? get player {
    if (_value.player == null) {
      return null;
    }

    return $StartXIPlayerCopyWith<$Res>(_value.player!, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StartXiCopyWith<$Res> implements $StartXICopyWith<$Res> {
  factory _$$_StartXiCopyWith(
          _$_StartXi value, $Res Function(_$_StartXi) then) =
      __$$_StartXiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StartXIPlayer? player});

  @override
  $StartXIPlayerCopyWith<$Res>? get player;
}

/// @nodoc
class __$$_StartXiCopyWithImpl<$Res>
    extends _$StartXICopyWithImpl<$Res, _$_StartXi>
    implements _$$_StartXiCopyWith<$Res> {
  __$$_StartXiCopyWithImpl(_$_StartXi _value, $Res Function(_$_StartXi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = freezed,
  }) {
    return _then(_$_StartXi(
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as StartXIPlayer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartXi implements _StartXi {
  const _$_StartXi({this.player});

  factory _$_StartXi.fromJson(Map<String, dynamic> json) =>
      _$$_StartXiFromJson(json);

  @override
  final StartXIPlayer? player;

  @override
  String toString() {
    return 'StartXI(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartXi &&
            (identical(other.player, player) || other.player == player));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartXiCopyWith<_$_StartXi> get copyWith =>
      __$$_StartXiCopyWithImpl<_$_StartXi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartXiToJson(
      this,
    );
  }
}

abstract class _StartXi implements StartXI {
  const factory _StartXi({final StartXIPlayer? player}) = _$_StartXi;

  factory _StartXi.fromJson(Map<String, dynamic> json) = _$_StartXi.fromJson;

  @override
  StartXIPlayer? get player;
  @override
  @JsonKey(ignore: true)
  _$$_StartXiCopyWith<_$_StartXi> get copyWith =>
      throw _privateConstructorUsedError;
}

StartXIPlayer _$StartXIPlayerFromJson(Map<String, dynamic> json) {
  return _StartXiPlayer.fromJson(json);
}

/// @nodoc
mixin _$StartXIPlayer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get pos => throw _privateConstructorUsedError;
  String? get grid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartXIPlayerCopyWith<StartXIPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartXIPlayerCopyWith<$Res> {
  factory $StartXIPlayerCopyWith(
          StartXIPlayer value, $Res Function(StartXIPlayer) then) =
      _$StartXIPlayerCopyWithImpl<$Res, StartXIPlayer>;
  @useResult
  $Res call({int? id, String? name, int? number, String? pos, String? grid});
}

/// @nodoc
class _$StartXIPlayerCopyWithImpl<$Res, $Val extends StartXIPlayer>
    implements $StartXIPlayerCopyWith<$Res> {
  _$StartXIPlayerCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartXiPlayerCopyWith<$Res>
    implements $StartXIPlayerCopyWith<$Res> {
  factory _$$_StartXiPlayerCopyWith(
          _$_StartXiPlayer value, $Res Function(_$_StartXiPlayer) then) =
      __$$_StartXiPlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, int? number, String? pos, String? grid});
}

/// @nodoc
class __$$_StartXiPlayerCopyWithImpl<$Res>
    extends _$StartXIPlayerCopyWithImpl<$Res, _$_StartXiPlayer>
    implements _$$_StartXiPlayerCopyWith<$Res> {
  __$$_StartXiPlayerCopyWithImpl(
      _$_StartXiPlayer _value, $Res Function(_$_StartXiPlayer) _then)
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
    return _then(_$_StartXiPlayer(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartXiPlayer implements _StartXiPlayer {
  const _$_StartXiPlayer(
      {this.id, this.name, this.number, this.pos, this.grid});

  factory _$_StartXiPlayer.fromJson(Map<String, dynamic> json) =>
      _$$_StartXiPlayerFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? number;
  @override
  final String? pos;
  @override
  final String? grid;

  @override
  String toString() {
    return 'StartXIPlayer(id: $id, name: $name, number: $number, pos: $pos, grid: $grid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartXiPlayer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.grid, grid) || other.grid == grid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, number, pos, grid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartXiPlayerCopyWith<_$_StartXiPlayer> get copyWith =>
      __$$_StartXiPlayerCopyWithImpl<_$_StartXiPlayer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartXiPlayerToJson(
      this,
    );
  }
}

abstract class _StartXiPlayer implements StartXIPlayer {
  const factory _StartXiPlayer(
      {final int? id,
      final String? name,
      final int? number,
      final String? pos,
      final String? grid}) = _$_StartXiPlayer;

  factory _StartXiPlayer.fromJson(Map<String, dynamic> json) =
      _$_StartXiPlayer.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get number;
  @override
  String? get pos;
  @override
  String? get grid;
  @override
  @JsonKey(ignore: true)
  _$$_StartXiPlayerCopyWith<_$_StartXiPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}
