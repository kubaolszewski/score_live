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
