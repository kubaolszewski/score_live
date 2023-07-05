// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'competition_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompetitionState {
  List<LeagueModel> get league => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompetitionStateCopyWith<CompetitionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetitionStateCopyWith<$Res> {
  factory $CompetitionStateCopyWith(
          CompetitionState value, $Res Function(CompetitionState) then) =
      _$CompetitionStateCopyWithImpl<$Res, CompetitionState>;
  @useResult
  $Res call({List<LeagueModel> league});
}

/// @nodoc
class _$CompetitionStateCopyWithImpl<$Res, $Val extends CompetitionState>
    implements $CompetitionStateCopyWith<$Res> {
  _$CompetitionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? league = null,
  }) {
    return _then(_value.copyWith(
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CompetitionStateCopyWith<$Res>
    implements $CompetitionStateCopyWith<$Res> {
  factory _$$_CompetitionStateCopyWith(
          _$_CompetitionState value, $Res Function(_$_CompetitionState) then) =
      __$$_CompetitionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeagueModel> league});
}

/// @nodoc
class __$$_CompetitionStateCopyWithImpl<$Res>
    extends _$CompetitionStateCopyWithImpl<$Res, _$_CompetitionState>
    implements _$$_CompetitionStateCopyWith<$Res> {
  __$$_CompetitionStateCopyWithImpl(
      _$_CompetitionState _value, $Res Function(_$_CompetitionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? league = null,
  }) {
    return _then(_$_CompetitionState(
      league: null == league
          ? _value._league
          : league // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
    ));
  }
}

/// @nodoc

class _$_CompetitionState implements _CompetitionState {
  const _$_CompetitionState({final List<LeagueModel> league = const []})
      : _league = league;

  final List<LeagueModel> _league;
  @override
  @JsonKey()
  List<LeagueModel> get league {
    if (_league is EqualUnmodifiableListView) return _league;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_league);
  }

  @override
  String toString() {
    return 'CompetitionState(league: $league)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompetitionState &&
            const DeepCollectionEquality().equals(other._league, _league));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_league));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompetitionStateCopyWith<_$_CompetitionState> get copyWith =>
      __$$_CompetitionStateCopyWithImpl<_$_CompetitionState>(this, _$identity);
}

abstract class _CompetitionState implements CompetitionState {
  const factory _CompetitionState({final List<LeagueModel> league}) =
      _$_CompetitionState;

  @override
  List<LeagueModel> get league;
  @override
  @JsonKey(ignore: true)
  _$$_CompetitionStateCopyWith<_$_CompetitionState> get copyWith =>
      throw _privateConstructorUsedError;
}
