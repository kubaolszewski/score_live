// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Score _$ScoreFromJson(Map<String, dynamic> json) {
  return _Score.fromJson(json);
}

/// @nodoc
mixin _$Score {
  Goals? get halftime => throw _privateConstructorUsedError;
  Goals? get fulltime => throw _privateConstructorUsedError;
  Goals? get extratime => throw _privateConstructorUsedError;
  Goals? get penalty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreCopyWith<Score> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreCopyWith<$Res> {
  factory $ScoreCopyWith(Score value, $Res Function(Score) then) =
      _$ScoreCopyWithImpl<$Res, Score>;
  @useResult
  $Res call(
      {Goals? halftime, Goals? fulltime, Goals? extratime, Goals? penalty});

  $GoalsCopyWith<$Res>? get halftime;
  $GoalsCopyWith<$Res>? get fulltime;
  $GoalsCopyWith<$Res>? get extratime;
  $GoalsCopyWith<$Res>? get penalty;
}

/// @nodoc
class _$ScoreCopyWithImpl<$Res, $Val extends Score>
    implements $ScoreCopyWith<$Res> {
  _$ScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? halftime = freezed,
    Object? fulltime = freezed,
    Object? extratime = freezed,
    Object? penalty = freezed,
  }) {
    return _then(_value.copyWith(
      halftime: freezed == halftime
          ? _value.halftime
          : halftime // ignore: cast_nullable_to_non_nullable
              as Goals?,
      fulltime: freezed == fulltime
          ? _value.fulltime
          : fulltime // ignore: cast_nullable_to_non_nullable
              as Goals?,
      extratime: freezed == extratime
          ? _value.extratime
          : extratime // ignore: cast_nullable_to_non_nullable
              as Goals?,
      penalty: freezed == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as Goals?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res>? get halftime {
    if (_value.halftime == null) {
      return null;
    }

    return $GoalsCopyWith<$Res>(_value.halftime!, (value) {
      return _then(_value.copyWith(halftime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res>? get fulltime {
    if (_value.fulltime == null) {
      return null;
    }

    return $GoalsCopyWith<$Res>(_value.fulltime!, (value) {
      return _then(_value.copyWith(fulltime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res>? get extratime {
    if (_value.extratime == null) {
      return null;
    }

    return $GoalsCopyWith<$Res>(_value.extratime!, (value) {
      return _then(_value.copyWith(extratime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res>? get penalty {
    if (_value.penalty == null) {
      return null;
    }

    return $GoalsCopyWith<$Res>(_value.penalty!, (value) {
      return _then(_value.copyWith(penalty: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScoreCopyWith<$Res> implements $ScoreCopyWith<$Res> {
  factory _$$_ScoreCopyWith(_$_Score value, $Res Function(_$_Score) then) =
      __$$_ScoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Goals? halftime, Goals? fulltime, Goals? extratime, Goals? penalty});

  @override
  $GoalsCopyWith<$Res>? get halftime;
  @override
  $GoalsCopyWith<$Res>? get fulltime;
  @override
  $GoalsCopyWith<$Res>? get extratime;
  @override
  $GoalsCopyWith<$Res>? get penalty;
}

/// @nodoc
class __$$_ScoreCopyWithImpl<$Res> extends _$ScoreCopyWithImpl<$Res, _$_Score>
    implements _$$_ScoreCopyWith<$Res> {
  __$$_ScoreCopyWithImpl(_$_Score _value, $Res Function(_$_Score) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? halftime = freezed,
    Object? fulltime = freezed,
    Object? extratime = freezed,
    Object? penalty = freezed,
  }) {
    return _then(_$_Score(
      halftime: freezed == halftime
          ? _value.halftime
          : halftime // ignore: cast_nullable_to_non_nullable
              as Goals?,
      fulltime: freezed == fulltime
          ? _value.fulltime
          : fulltime // ignore: cast_nullable_to_non_nullable
              as Goals?,
      extratime: freezed == extratime
          ? _value.extratime
          : extratime // ignore: cast_nullable_to_non_nullable
              as Goals?,
      penalty: freezed == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as Goals?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Score implements _Score {
  const _$_Score({this.halftime, this.fulltime, this.extratime, this.penalty});

  factory _$_Score.fromJson(Map<String, dynamic> json) =>
      _$$_ScoreFromJson(json);

  @override
  final Goals? halftime;
  @override
  final Goals? fulltime;
  @override
  final Goals? extratime;
  @override
  final Goals? penalty;

  @override
  String toString() {
    return 'Score(halftime: $halftime, fulltime: $fulltime, extratime: $extratime, penalty: $penalty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Score &&
            (identical(other.halftime, halftime) ||
                other.halftime == halftime) &&
            (identical(other.fulltime, fulltime) ||
                other.fulltime == fulltime) &&
            (identical(other.extratime, extratime) ||
                other.extratime == extratime) &&
            (identical(other.penalty, penalty) || other.penalty == penalty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, halftime, fulltime, extratime, penalty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScoreCopyWith<_$_Score> get copyWith =>
      __$$_ScoreCopyWithImpl<_$_Score>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScoreToJson(
      this,
    );
  }
}

abstract class _Score implements Score {
  const factory _Score(
      {final Goals? halftime,
      final Goals? fulltime,
      final Goals? extratime,
      final Goals? penalty}) = _$_Score;

  factory _Score.fromJson(Map<String, dynamic> json) = _$_Score.fromJson;

  @override
  Goals? get halftime;
  @override
  Goals? get fulltime;
  @override
  Goals? get extratime;
  @override
  Goals? get penalty;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreCopyWith<_$_Score> get copyWith =>
      throw _privateConstructorUsedError;
}
