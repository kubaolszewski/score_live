// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_matches_fixtures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveMatchesFixtures _$LiveMatchesFixturesFromJson(Map<String, dynamic> json) {
  return _LiveMatchesFixtures.fromJson(json);
}

/// @nodoc
mixin _$LiveMatchesFixtures {
  List<MatchModel>? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveMatchesFixturesCopyWith<LiveMatchesFixtures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveMatchesFixturesCopyWith<$Res> {
  factory $LiveMatchesFixturesCopyWith(
          LiveMatchesFixtures value, $Res Function(LiveMatchesFixtures) then) =
      _$LiveMatchesFixturesCopyWithImpl<$Res, LiveMatchesFixtures>;
  @useResult
  $Res call({List<MatchModel>? response});
}

/// @nodoc
class _$LiveMatchesFixturesCopyWithImpl<$Res, $Val extends LiveMatchesFixtures>
    implements $LiveMatchesFixturesCopyWith<$Res> {
  _$LiveMatchesFixturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LiveMatchesFixturesCopyWith<$Res>
    implements $LiveMatchesFixturesCopyWith<$Res> {
  factory _$$_LiveMatchesFixturesCopyWith(_$_LiveMatchesFixtures value,
          $Res Function(_$_LiveMatchesFixtures) then) =
      __$$_LiveMatchesFixturesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MatchModel>? response});
}

/// @nodoc
class __$$_LiveMatchesFixturesCopyWithImpl<$Res>
    extends _$LiveMatchesFixturesCopyWithImpl<$Res, _$_LiveMatchesFixtures>
    implements _$$_LiveMatchesFixturesCopyWith<$Res> {
  __$$_LiveMatchesFixturesCopyWithImpl(_$_LiveMatchesFixtures _value,
      $Res Function(_$_LiveMatchesFixtures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_LiveMatchesFixtures(
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveMatchesFixtures implements _LiveMatchesFixtures {
  _$_LiveMatchesFixtures({final List<MatchModel>? response})
      : _response = response;

  factory _$_LiveMatchesFixtures.fromJson(Map<String, dynamic> json) =>
      _$$_LiveMatchesFixturesFromJson(json);

  final List<MatchModel>? _response;
  @override
  List<MatchModel>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LiveMatchesFixtures(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveMatchesFixtures &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveMatchesFixturesCopyWith<_$_LiveMatchesFixtures> get copyWith =>
      __$$_LiveMatchesFixturesCopyWithImpl<_$_LiveMatchesFixtures>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveMatchesFixturesToJson(
      this,
    );
  }
}

abstract class _LiveMatchesFixtures implements LiveMatchesFixtures {
  factory _LiveMatchesFixtures({final List<MatchModel>? response}) =
      _$_LiveMatchesFixtures;

  factory _LiveMatchesFixtures.fromJson(Map<String, dynamic> json) =
      _$_LiveMatchesFixtures.fromJson;

  @override
  List<MatchModel>? get response;
  @override
  @JsonKey(ignore: true)
  _$$_LiveMatchesFixturesCopyWith<_$_LiveMatchesFixtures> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchEvents _$MatchEventsFromJson(Map<String, dynamic> json) {
  return _MatchEvents.fromJson(json);
}

/// @nodoc
mixin _$MatchEvents {
  List<MatchEventsModel> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchEventsCopyWith<MatchEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchEventsCopyWith<$Res> {
  factory $MatchEventsCopyWith(
          MatchEvents value, $Res Function(MatchEvents) then) =
      _$MatchEventsCopyWithImpl<$Res, MatchEvents>;
  @useResult
  $Res call({List<MatchEventsModel> response});
}

/// @nodoc
class _$MatchEventsCopyWithImpl<$Res, $Val extends MatchEvents>
    implements $MatchEventsCopyWith<$Res> {
  _$MatchEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<MatchEventsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchEventsCopyWith<$Res>
    implements $MatchEventsCopyWith<$Res> {
  factory _$$_MatchEventsCopyWith(
          _$_MatchEvents value, $Res Function(_$_MatchEvents) then) =
      __$$_MatchEventsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MatchEventsModel> response});
}

/// @nodoc
class __$$_MatchEventsCopyWithImpl<$Res>
    extends _$MatchEventsCopyWithImpl<$Res, _$_MatchEvents>
    implements _$$_MatchEventsCopyWith<$Res> {
  __$$_MatchEventsCopyWithImpl(
      _$_MatchEvents _value, $Res Function(_$_MatchEvents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_MatchEvents(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<MatchEventsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchEvents implements _MatchEvents {
  _$_MatchEvents({final List<MatchEventsModel> response = const []})
      : _response = response;

  factory _$_MatchEvents.fromJson(Map<String, dynamic> json) =>
      _$$_MatchEventsFromJson(json);

  final List<MatchEventsModel> _response;
  @override
  @JsonKey()
  List<MatchEventsModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'MatchEvents(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchEvents &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchEventsCopyWith<_$_MatchEvents> get copyWith =>
      __$$_MatchEventsCopyWithImpl<_$_MatchEvents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchEventsToJson(
      this,
    );
  }
}

abstract class _MatchEvents implements MatchEvents {
  factory _MatchEvents({final List<MatchEventsModel> response}) =
      _$_MatchEvents;

  factory _MatchEvents.fromJson(Map<String, dynamic> json) =
      _$_MatchEvents.fromJson;

  @override
  List<MatchEventsModel> get response;
  @override
  @JsonKey(ignore: true)
  _$$_MatchEventsCopyWith<_$_MatchEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchLineUps _$MatchLineUpsFromJson(Map<String, dynamic> json) {
  return _MatchLineUps.fromJson(json);
}

/// @nodoc
mixin _$MatchLineUps {
  List<LineUpModel> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchLineUpsCopyWith<MatchLineUps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchLineUpsCopyWith<$Res> {
  factory $MatchLineUpsCopyWith(
          MatchLineUps value, $Res Function(MatchLineUps) then) =
      _$MatchLineUpsCopyWithImpl<$Res, MatchLineUps>;
  @useResult
  $Res call({List<LineUpModel> response});
}

/// @nodoc
class _$MatchLineUpsCopyWithImpl<$Res, $Val extends MatchLineUps>
    implements $MatchLineUpsCopyWith<$Res> {
  _$MatchLineUpsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LineUpModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchLineUpsCopyWith<$Res>
    implements $MatchLineUpsCopyWith<$Res> {
  factory _$$_MatchLineUpsCopyWith(
          _$_MatchLineUps value, $Res Function(_$_MatchLineUps) then) =
      __$$_MatchLineUpsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LineUpModel> response});
}

/// @nodoc
class __$$_MatchLineUpsCopyWithImpl<$Res>
    extends _$MatchLineUpsCopyWithImpl<$Res, _$_MatchLineUps>
    implements _$$_MatchLineUpsCopyWith<$Res> {
  __$$_MatchLineUpsCopyWithImpl(
      _$_MatchLineUps _value, $Res Function(_$_MatchLineUps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_MatchLineUps(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LineUpModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchLineUps implements _MatchLineUps {
  _$_MatchLineUps({final List<LineUpModel> response = const []})
      : _response = response;

  factory _$_MatchLineUps.fromJson(Map<String, dynamic> json) =>
      _$$_MatchLineUpsFromJson(json);

  final List<LineUpModel> _response;
  @override
  @JsonKey()
  List<LineUpModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'MatchLineUps(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchLineUps &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchLineUpsCopyWith<_$_MatchLineUps> get copyWith =>
      __$$_MatchLineUpsCopyWithImpl<_$_MatchLineUps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchLineUpsToJson(
      this,
    );
  }
}

abstract class _MatchLineUps implements MatchLineUps {
  factory _MatchLineUps({final List<LineUpModel> response}) = _$_MatchLineUps;

  factory _MatchLineUps.fromJson(Map<String, dynamic> json) =
      _$_MatchLineUps.fromJson;

  @override
  List<LineUpModel> get response;
  @override
  @JsonKey(ignore: true)
  _$$_MatchLineUpsCopyWith<_$_MatchLineUps> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchStatistics _$MatchStatisticsFromJson(Map<String, dynamic> json) {
  return _MatchStatistics.fromJson(json);
}

/// @nodoc
mixin _$MatchStatistics {
  List<StatisticsModel> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchStatisticsCopyWith<MatchStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchStatisticsCopyWith<$Res> {
  factory $MatchStatisticsCopyWith(
          MatchStatistics value, $Res Function(MatchStatistics) then) =
      _$MatchStatisticsCopyWithImpl<$Res, MatchStatistics>;
  @useResult
  $Res call({List<StatisticsModel> response});
}

/// @nodoc
class _$MatchStatisticsCopyWithImpl<$Res, $Val extends MatchStatistics>
    implements $MatchStatisticsCopyWith<$Res> {
  _$MatchStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<StatisticsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchStatisticsCopyWith<$Res>
    implements $MatchStatisticsCopyWith<$Res> {
  factory _$$_MatchStatisticsCopyWith(
          _$_MatchStatistics value, $Res Function(_$_MatchStatistics) then) =
      __$$_MatchStatisticsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StatisticsModel> response});
}

/// @nodoc
class __$$_MatchStatisticsCopyWithImpl<$Res>
    extends _$MatchStatisticsCopyWithImpl<$Res, _$_MatchStatistics>
    implements _$$_MatchStatisticsCopyWith<$Res> {
  __$$_MatchStatisticsCopyWithImpl(
      _$_MatchStatistics _value, $Res Function(_$_MatchStatistics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_MatchStatistics(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<StatisticsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchStatistics implements _MatchStatistics {
  _$_MatchStatistics({final List<StatisticsModel> response = const []})
      : _response = response;

  factory _$_MatchStatistics.fromJson(Map<String, dynamic> json) =>
      _$$_MatchStatisticsFromJson(json);

  final List<StatisticsModel> _response;
  @override
  @JsonKey()
  List<StatisticsModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'MatchStatistics(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchStatistics &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchStatisticsCopyWith<_$_MatchStatistics> get copyWith =>
      __$$_MatchStatisticsCopyWithImpl<_$_MatchStatistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchStatisticsToJson(
      this,
    );
  }
}

abstract class _MatchStatistics implements MatchStatistics {
  factory _MatchStatistics({final List<StatisticsModel> response}) =
      _$_MatchStatistics;

  factory _MatchStatistics.fromJson(Map<String, dynamic> json) =
      _$_MatchStatistics.fromJson;

  @override
  List<StatisticsModel> get response;
  @override
  @JsonKey(ignore: true)
  _$$_MatchStatisticsCopyWith<_$_MatchStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

Standings _$StandingsFromJson(Map<String, dynamic> json) {
  return _Standings.fromJson(json);
}

/// @nodoc
mixin _$Standings {
  List<StandingsModel> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StandingsCopyWith<Standings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandingsCopyWith<$Res> {
  factory $StandingsCopyWith(Standings value, $Res Function(Standings) then) =
      _$StandingsCopyWithImpl<$Res, Standings>;
  @useResult
  $Res call({List<StandingsModel> response});
}

/// @nodoc
class _$StandingsCopyWithImpl<$Res, $Val extends Standings>
    implements $StandingsCopyWith<$Res> {
  _$StandingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<StandingsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StandingsCopyWith<$Res> implements $StandingsCopyWith<$Res> {
  factory _$$_StandingsCopyWith(
          _$_Standings value, $Res Function(_$_Standings) then) =
      __$$_StandingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StandingsModel> response});
}

/// @nodoc
class __$$_StandingsCopyWithImpl<$Res>
    extends _$StandingsCopyWithImpl<$Res, _$_Standings>
    implements _$$_StandingsCopyWith<$Res> {
  __$$_StandingsCopyWithImpl(
      _$_Standings _value, $Res Function(_$_Standings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_Standings(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<StandingsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Standings implements _Standings {
  _$_Standings({final List<StandingsModel> response = const []})
      : _response = response;

  factory _$_Standings.fromJson(Map<String, dynamic> json) =>
      _$$_StandingsFromJson(json);

  final List<StandingsModel> _response;
  @override
  @JsonKey()
  List<StandingsModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'Standings(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Standings &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StandingsCopyWith<_$_Standings> get copyWith =>
      __$$_StandingsCopyWithImpl<_$_Standings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StandingsToJson(
      this,
    );
  }
}

abstract class _Standings implements Standings {
  factory _Standings({final List<StandingsModel> response}) = _$_Standings;

  factory _Standings.fromJson(Map<String, dynamic> json) =
      _$_Standings.fromJson;

  @override
  List<StandingsModel> get response;
  @override
  @JsonKey(ignore: true)
  _$$_StandingsCopyWith<_$_Standings> get copyWith =>
      throw _privateConstructorUsedError;
}

League _$LeagueFromJson(Map<String, dynamic> json) {
  return _League.fromJson(json);
}

/// @nodoc
mixin _$League {
  List<LeagueModel> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueCopyWith<League> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueCopyWith<$Res> {
  factory $LeagueCopyWith(League value, $Res Function(League) then) =
      _$LeagueCopyWithImpl<$Res, League>;
  @useResult
  $Res call({List<LeagueModel> response});
}

/// @nodoc
class _$LeagueCopyWithImpl<$Res, $Val extends League>
    implements $LeagueCopyWith<$Res> {
  _$LeagueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeagueCopyWith<$Res> implements $LeagueCopyWith<$Res> {
  factory _$$_LeagueCopyWith(_$_League value, $Res Function(_$_League) then) =
      __$$_LeagueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeagueModel> response});
}

/// @nodoc
class __$$_LeagueCopyWithImpl<$Res>
    extends _$LeagueCopyWithImpl<$Res, _$_League>
    implements _$$_LeagueCopyWith<$Res> {
  __$$_LeagueCopyWithImpl(_$_League _value, $Res Function(_$_League) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_League(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_League implements _League {
  _$_League({final List<LeagueModel> response = const []})
      : _response = response;

  factory _$_League.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueFromJson(json);

  final List<LeagueModel> _response;
  @override
  @JsonKey()
  List<LeagueModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'League(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_League &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeagueCopyWith<_$_League> get copyWith =>
      __$$_LeagueCopyWithImpl<_$_League>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueToJson(
      this,
    );
  }
}

abstract class _League implements League {
  factory _League({final List<LeagueModel> response}) = _$_League;

  factory _League.fromJson(Map<String, dynamic> json) = _$_League.fromJson;

  @override
  List<LeagueModel> get response;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueCopyWith<_$_League> get copyWith =>
      throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  List<TeamModel> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call({List<TeamModel> response});
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
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$_TeamCopyWith(_$_Team value, $Res Function(_$_Team) then) =
      __$$_TeamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TeamModel> response});
}

/// @nodoc
class __$$_TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res, _$_Team>
    implements _$$_TeamCopyWith<$Res> {
  __$$_TeamCopyWithImpl(_$_Team _value, $Res Function(_$_Team) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$_Team(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Team implements _Team {
  _$_Team({final List<TeamModel> response = const []}) : _response = response;

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  final List<TeamModel> _response;
  @override
  @JsonKey()
  List<TeamModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'Team(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

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
  factory _Team({final List<TeamModel> response}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  List<TeamModel> get response;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}

LeagueResultsDetails _$LeagueResultsDetailsFromJson(Map<String, dynamic> json) {
  return _LeagueResultsDetails.fromJson(json);
}

/// @nodoc
mixin _$LeagueResultsDetails {
  List<MatchModel>? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueResultsDetailsCopyWith<LeagueResultsDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueResultsDetailsCopyWith<$Res> {
  factory $LeagueResultsDetailsCopyWith(LeagueResultsDetails value,
          $Res Function(LeagueResultsDetails) then) =
      _$LeagueResultsDetailsCopyWithImpl<$Res, LeagueResultsDetails>;
  @useResult
  $Res call({List<MatchModel>? response});
}

/// @nodoc
class _$LeagueResultsDetailsCopyWithImpl<$Res,
        $Val extends LeagueResultsDetails>
    implements $LeagueResultsDetailsCopyWith<$Res> {
  _$LeagueResultsDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeagueResultsDetailsCopyWith<$Res>
    implements $LeagueResultsDetailsCopyWith<$Res> {
  factory _$$_LeagueResultsDetailsCopyWith(_$_LeagueResultsDetails value,
          $Res Function(_$_LeagueResultsDetails) then) =
      __$$_LeagueResultsDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MatchModel>? response});
}

/// @nodoc
class __$$_LeagueResultsDetailsCopyWithImpl<$Res>
    extends _$LeagueResultsDetailsCopyWithImpl<$Res, _$_LeagueResultsDetails>
    implements _$$_LeagueResultsDetailsCopyWith<$Res> {
  __$$_LeagueResultsDetailsCopyWithImpl(_$_LeagueResultsDetails _value,
      $Res Function(_$_LeagueResultsDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_LeagueResultsDetails(
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeagueResultsDetails implements _LeagueResultsDetails {
  _$_LeagueResultsDetails({final List<MatchModel>? response})
      : _response = response;

  factory _$_LeagueResultsDetails.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueResultsDetailsFromJson(json);

  final List<MatchModel>? _response;
  @override
  List<MatchModel>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LeagueResultsDetails(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeagueResultsDetails &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeagueResultsDetailsCopyWith<_$_LeagueResultsDetails> get copyWith =>
      __$$_LeagueResultsDetailsCopyWithImpl<_$_LeagueResultsDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueResultsDetailsToJson(
      this,
    );
  }
}

abstract class _LeagueResultsDetails implements LeagueResultsDetails {
  factory _LeagueResultsDetails({final List<MatchModel>? response}) =
      _$_LeagueResultsDetails;

  factory _LeagueResultsDetails.fromJson(Map<String, dynamic> json) =
      _$_LeagueResultsDetails.fromJson;

  @override
  List<MatchModel>? get response;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueResultsDetailsCopyWith<_$_LeagueResultsDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
