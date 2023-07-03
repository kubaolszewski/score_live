// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_events_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchEventsModel _$MatchEventsModelFromJson(Map<String, dynamic> json) {
  return _MatchEventsModel.fromJson(json);
}

/// @nodoc
mixin _$MatchEventsModel {
  Time? get time => throw _privateConstructorUsedError;
  Team? get team => throw _privateConstructorUsedError;
  Player? get player => throw _privateConstructorUsedError;
  Assist? get assist => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String? get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchEventsModelCopyWith<MatchEventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchEventsModelCopyWith<$Res> {
  factory $MatchEventsModelCopyWith(
          MatchEventsModel value, $Res Function(MatchEventsModel) then) =
      _$MatchEventsModelCopyWithImpl<$Res, MatchEventsModel>;
  @useResult
  $Res call(
      {Time? time,
      Team? team,
      Player? player,
      Assist? assist,
      String? type,
      String? detail,
      String? comments});

  $TimeCopyWith<$Res>? get time;
  $TeamCopyWith<$Res>? get team;
  $PlayerCopyWith<$Res>? get player;
  $AssistCopyWith<$Res>? get assist;
}

/// @nodoc
class _$MatchEventsModelCopyWithImpl<$Res, $Val extends MatchEventsModel>
    implements $MatchEventsModelCopyWith<$Res> {
  _$MatchEventsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? team = freezed,
    Object? player = freezed,
    Object? assist = freezed,
    Object? type = freezed,
    Object? detail = freezed,
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player?,
      assist: freezed == assist
          ? _value.assist
          : assist // ignore: cast_nullable_to_non_nullable
              as Assist?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res>? get player {
    if (_value.player == null) {
      return null;
    }

    return $PlayerCopyWith<$Res>(_value.player!, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssistCopyWith<$Res>? get assist {
    if (_value.assist == null) {
      return null;
    }

    return $AssistCopyWith<$Res>(_value.assist!, (value) {
      return _then(_value.copyWith(assist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MatchEventsModelCopyWith<$Res>
    implements $MatchEventsModelCopyWith<$Res> {
  factory _$$_MatchEventsModelCopyWith(
          _$_MatchEventsModel value, $Res Function(_$_MatchEventsModel) then) =
      __$$_MatchEventsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Time? time,
      Team? team,
      Player? player,
      Assist? assist,
      String? type,
      String? detail,
      String? comments});

  @override
  $TimeCopyWith<$Res>? get time;
  @override
  $TeamCopyWith<$Res>? get team;
  @override
  $PlayerCopyWith<$Res>? get player;
  @override
  $AssistCopyWith<$Res>? get assist;
}

/// @nodoc
class __$$_MatchEventsModelCopyWithImpl<$Res>
    extends _$MatchEventsModelCopyWithImpl<$Res, _$_MatchEventsModel>
    implements _$$_MatchEventsModelCopyWith<$Res> {
  __$$_MatchEventsModelCopyWithImpl(
      _$_MatchEventsModel _value, $Res Function(_$_MatchEventsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? team = freezed,
    Object? player = freezed,
    Object? assist = freezed,
    Object? type = freezed,
    Object? detail = freezed,
    Object? comments = freezed,
  }) {
    return _then(_$_MatchEventsModel(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player?,
      assist: freezed == assist
          ? _value.assist
          : assist // ignore: cast_nullable_to_non_nullable
              as Assist?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchEventsModel implements _MatchEventsModel {
  const _$_MatchEventsModel(
      {this.time,
      this.team,
      this.player,
      this.assist,
      this.type,
      this.detail,
      this.comments});

  factory _$_MatchEventsModel.fromJson(Map<String, dynamic> json) =>
      _$$_MatchEventsModelFromJson(json);

  @override
  final Time? time;
  @override
  final Team? team;
  @override
  final Player? player;
  @override
  final Assist? assist;
  @override
  final String? type;
  @override
  final String? detail;
  @override
  final String? comments;

  @override
  String toString() {
    return 'MatchEventsModel(time: $time, team: $team, player: $player, assist: $assist, type: $type, detail: $detail, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchEventsModel &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.assist, assist) || other.assist == assist) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.comments, comments) ||
                other.comments == comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, time, team, player, assist, type, detail, comments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchEventsModelCopyWith<_$_MatchEventsModel> get copyWith =>
      __$$_MatchEventsModelCopyWithImpl<_$_MatchEventsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchEventsModelToJson(
      this,
    );
  }
}

abstract class _MatchEventsModel implements MatchEventsModel {
  const factory _MatchEventsModel(
      {final Time? time,
      final Team? team,
      final Player? player,
      final Assist? assist,
      final String? type,
      final String? detail,
      final String? comments}) = _$_MatchEventsModel;

  factory _MatchEventsModel.fromJson(Map<String, dynamic> json) =
      _$_MatchEventsModel.fromJson;

  @override
  Time? get time;
  @override
  Team? get team;
  @override
  Player? get player;
  @override
  Assist? get assist;
  @override
  String? get type;
  @override
  String? get detail;
  @override
  String? get comments;
  @override
  @JsonKey(ignore: true)
  _$$_MatchEventsModelCopyWith<_$_MatchEventsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Assist _$AssistFromJson(Map<String, dynamic> json) {
  return _Assist.fromJson(json);
}

/// @nodoc
mixin _$Assist {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssistCopyWith<Assist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistCopyWith<$Res> {
  factory $AssistCopyWith(Assist value, $Res Function(Assist) then) =
      _$AssistCopyWithImpl<$Res, Assist>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$AssistCopyWithImpl<$Res, $Val extends Assist>
    implements $AssistCopyWith<$Res> {
  _$AssistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssistCopyWith<$Res> implements $AssistCopyWith<$Res> {
  factory _$$_AssistCopyWith(_$_Assist value, $Res Function(_$_Assist) then) =
      __$$_AssistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_AssistCopyWithImpl<$Res>
    extends _$AssistCopyWithImpl<$Res, _$_Assist>
    implements _$$_AssistCopyWith<$Res> {
  __$$_AssistCopyWithImpl(_$_Assist _value, $Res Function(_$_Assist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Assist(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Assist implements _Assist {
  const _$_Assist({this.id, this.name});

  factory _$_Assist.fromJson(Map<String, dynamic> json) =>
      _$$_AssistFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Assist(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Assist &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssistCopyWith<_$_Assist> get copyWith =>
      __$$_AssistCopyWithImpl<_$_Assist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssistToJson(
      this,
    );
  }
}

abstract class _Assist implements Assist {
  const factory _Assist({final int? id, final String? name}) = _$_Assist;

  factory _Assist.fromJson(Map<String, dynamic> json) = _$_Assist.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_AssistCopyWith<_$_Assist> get copyWith =>
      throw _privateConstructorUsedError;
}

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$_PlayerCopyWith(_$_Player value, $Res Function(_$_Player) then) =
      __$$_PlayerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_PlayerCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$_Player>
    implements _$$_PlayerCopyWith<$Res> {
  __$$_PlayerCopyWithImpl(_$_Player _value, $Res Function(_$_Player) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Player(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Player implements _Player {
  const _$_Player({this.id, this.name});

  factory _$_Player.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Player(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Player &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      __$$_PlayerCopyWithImpl<_$_Player>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerToJson(
      this,
    );
  }
}

abstract class _Player implements Player {
  const factory _Player({final int? id, final String? name}) = _$_Player;

  factory _Player.fromJson(Map<String, dynamic> json) = _$_Player.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerCopyWith<_$_Player> get copyWith =>
      throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call({int? id, String? name, String? logo});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
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
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$_TeamCopyWith(_$_Team value, $Res Function(_$_Team) then) =
      __$$_TeamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? logo});
}

/// @nodoc
class __$$_TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res, _$_Team>
    implements _$$_TeamCopyWith<$Res> {
  __$$_TeamCopyWithImpl(_$_Team _value, $Res Function(_$_Team) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$_Team(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Team implements _Team {
  const _$_Team({this.id, this.name, this.logo});

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? logo;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamCopyWith<_$_Team> get copyWith =>
      __$$_TeamCopyWithImpl<_$_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamToJson(
      this,
    );
  }
}

abstract class _Team implements Team {
  const factory _Team({final int? id, final String? name, final String? logo}) =
      _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  int? get elapsed => throw _privateConstructorUsedError;
  int? get extra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call({int? elapsed, int? extra});
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsed = freezed,
    Object? extra = freezed,
  }) {
    return _then(_value.copyWith(
      elapsed: freezed == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$_TimeCopyWith(_$_Time value, $Res Function(_$_Time) then) =
      __$$_TimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? elapsed, int? extra});
}

/// @nodoc
class __$$_TimeCopyWithImpl<$Res> extends _$TimeCopyWithImpl<$Res, _$_Time>
    implements _$$_TimeCopyWith<$Res> {
  __$$_TimeCopyWithImpl(_$_Time _value, $Res Function(_$_Time) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elapsed = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$_Time(
      elapsed: freezed == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Time implements _Time {
  const _$_Time({this.elapsed, this.extra});

  factory _$_Time.fromJson(Map<String, dynamic> json) => _$$_TimeFromJson(json);

  @override
  final int? elapsed;
  @override
  final int? extra;

  @override
  String toString() {
    return 'Time(elapsed: $elapsed, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Time &&
            (identical(other.elapsed, elapsed) || other.elapsed == elapsed) &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, elapsed, extra);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeCopyWith<_$_Time> get copyWith =>
      __$$_TimeCopyWithImpl<_$_Time>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  const factory _Time({final int? elapsed, final int? extra}) = _$_Time;

  factory _Time.fromJson(Map<String, dynamic> json) = _$_Time.fromJson;

  @override
  int? get elapsed;
  @override
  int? get extra;
  @override
  @JsonKey(ignore: true)
  _$$_TimeCopyWith<_$_Time> get copyWith => throw _privateConstructorUsedError;
}
