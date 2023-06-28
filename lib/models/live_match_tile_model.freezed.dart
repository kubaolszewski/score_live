// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_match_tile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveMatchTileModel _$LiveMatchTileModelFromJson(Map<String, dynamic> json) {
  return _LiveMatchTileModel.fromJson(json);
}

/// @nodoc
mixin _$LiveMatchTileModel {
  String get liveMatchTileGet => throw _privateConstructorUsedError;
  Parameters get parameters => throw _privateConstructorUsedError;
  List<dynamic> get errors => throw _privateConstructorUsedError;
  int get results => throw _privateConstructorUsedError;
  Paging get paging => throw _privateConstructorUsedError;
  List<Response> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveMatchTileModelCopyWith<LiveMatchTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveMatchTileModelCopyWith<$Res> {
  factory $LiveMatchTileModelCopyWith(
          LiveMatchTileModel value, $Res Function(LiveMatchTileModel) then) =
      _$LiveMatchTileModelCopyWithImpl<$Res, LiveMatchTileModel>;
  @useResult
  $Res call(
      {String liveMatchTileGet,
      Parameters parameters,
      List<dynamic> errors,
      int results,
      Paging paging,
      List<Response> response});

  $ParametersCopyWith<$Res> get parameters;
  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class _$LiveMatchTileModelCopyWithImpl<$Res, $Val extends LiveMatchTileModel>
    implements $LiveMatchTileModelCopyWith<$Res> {
  _$LiveMatchTileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveMatchTileGet = null,
    Object? parameters = null,
    Object? errors = null,
    Object? results = null,
    Object? paging = null,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      liveMatchTileGet: null == liveMatchTileGet
          ? _value.liveMatchTileGet
          : liveMatchTileGet // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Parameters,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as int,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Response>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParametersCopyWith<$Res> get parameters {
    return $ParametersCopyWith<$Res>(_value.parameters, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PagingCopyWith<$Res> get paging {
    return $PagingCopyWith<$Res>(_value.paging, (value) {
      return _then(_value.copyWith(paging: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LiveMatchTileModelCopyWith<$Res>
    implements $LiveMatchTileModelCopyWith<$Res> {
  factory _$$_LiveMatchTileModelCopyWith(_$_LiveMatchTileModel value,
          $Res Function(_$_LiveMatchTileModel) then) =
      __$$_LiveMatchTileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String liveMatchTileGet,
      Parameters parameters,
      List<dynamic> errors,
      int results,
      Paging paging,
      List<Response> response});

  @override
  $ParametersCopyWith<$Res> get parameters;
  @override
  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class __$$_LiveMatchTileModelCopyWithImpl<$Res>
    extends _$LiveMatchTileModelCopyWithImpl<$Res, _$_LiveMatchTileModel>
    implements _$$_LiveMatchTileModelCopyWith<$Res> {
  __$$_LiveMatchTileModelCopyWithImpl(
      _$_LiveMatchTileModel _value, $Res Function(_$_LiveMatchTileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liveMatchTileGet = null,
    Object? parameters = null,
    Object? errors = null,
    Object? results = null,
    Object? paging = null,
    Object? response = null,
  }) {
    return _then(_$_LiveMatchTileModel(
      liveMatchTileGet: null == liveMatchTileGet
          ? _value.liveMatchTileGet
          : liveMatchTileGet // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Parameters,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as int,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Response>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveMatchTileModel implements _LiveMatchTileModel {
  const _$_LiveMatchTileModel(
      {required this.liveMatchTileGet,
      required this.parameters,
      required final List<dynamic> errors,
      required this.results,
      required this.paging,
      required final List<Response> response})
      : _errors = errors,
        _response = response;

  factory _$_LiveMatchTileModel.fromJson(Map<String, dynamic> json) =>
      _$$_LiveMatchTileModelFromJson(json);

  @override
  final String liveMatchTileGet;
  @override
  final Parameters parameters;
  final List<dynamic> _errors;
  @override
  List<dynamic> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  final int results;
  @override
  final Paging paging;
  final List<Response> _response;
  @override
  List<Response> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'LiveMatchTileModel(liveMatchTileGet: $liveMatchTileGet, parameters: $parameters, errors: $errors, results: $results, paging: $paging, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveMatchTileModel &&
            (identical(other.liveMatchTileGet, liveMatchTileGet) ||
                other.liveMatchTileGet == liveMatchTileGet) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.results, results) || other.results == results) &&
            (identical(other.paging, paging) || other.paging == paging) &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      liveMatchTileGet,
      parameters,
      const DeepCollectionEquality().hash(_errors),
      results,
      paging,
      const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveMatchTileModelCopyWith<_$_LiveMatchTileModel> get copyWith =>
      __$$_LiveMatchTileModelCopyWithImpl<_$_LiveMatchTileModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveMatchTileModelToJson(
      this,
    );
  }
}

abstract class _LiveMatchTileModel implements LiveMatchTileModel {
  const factory _LiveMatchTileModel(
      {required final String liveMatchTileGet,
      required final Parameters parameters,
      required final List<dynamic> errors,
      required final int results,
      required final Paging paging,
      required final List<Response> response}) = _$_LiveMatchTileModel;

  factory _LiveMatchTileModel.fromJson(Map<String, dynamic> json) =
      _$_LiveMatchTileModel.fromJson;

  @override
  String get liveMatchTileGet;
  @override
  Parameters get parameters;
  @override
  List<dynamic> get errors;
  @override
  int get results;
  @override
  Paging get paging;
  @override
  List<Response> get response;
  @override
  @JsonKey(ignore: true)
  _$$_LiveMatchTileModelCopyWith<_$_LiveMatchTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Paging _$PagingFromJson(Map<String, dynamic> json) {
  return _Paging.fromJson(json);
}

/// @nodoc
mixin _$Paging {
  int get current => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingCopyWith<Paging> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingCopyWith<$Res> {
  factory $PagingCopyWith(Paging value, $Res Function(Paging) then) =
      _$PagingCopyWithImpl<$Res, Paging>;
  @useResult
  $Res call({int current, int total});
}

/// @nodoc
class _$PagingCopyWithImpl<$Res, $Val extends Paging>
    implements $PagingCopyWith<$Res> {
  _$PagingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PagingCopyWith<$Res> implements $PagingCopyWith<$Res> {
  factory _$$_PagingCopyWith(_$_Paging value, $Res Function(_$_Paging) then) =
      __$$_PagingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current, int total});
}

/// @nodoc
class __$$_PagingCopyWithImpl<$Res>
    extends _$PagingCopyWithImpl<$Res, _$_Paging>
    implements _$$_PagingCopyWith<$Res> {
  __$$_PagingCopyWithImpl(_$_Paging _value, $Res Function(_$_Paging) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
  }) {
    return _then(_$_Paging(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Paging implements _Paging {
  const _$_Paging({required this.current, required this.total});

  factory _$_Paging.fromJson(Map<String, dynamic> json) =>
      _$$_PagingFromJson(json);

  @override
  final int current;
  @override
  final int total;

  @override
  String toString() {
    return 'Paging(current: $current, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Paging &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      __$$_PagingCopyWithImpl<_$_Paging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingToJson(
      this,
    );
  }
}

abstract class _Paging implements Paging {
  const factory _Paging(
      {required final int current, required final int total}) = _$_Paging;

  factory _Paging.fromJson(Map<String, dynamic> json) = _$_Paging.fromJson;

  @override
  int get current;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      throw _privateConstructorUsedError;
}

Parameters _$ParametersFromJson(Map<String, dynamic> json) {
  return _Parameters.fromJson(json);
}

/// @nodoc
mixin _$Parameters {
  String get live => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParametersCopyWith<Parameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParametersCopyWith<$Res> {
  factory $ParametersCopyWith(
          Parameters value, $Res Function(Parameters) then) =
      _$ParametersCopyWithImpl<$Res, Parameters>;
  @useResult
  $Res call({String live});
}

/// @nodoc
class _$ParametersCopyWithImpl<$Res, $Val extends Parameters>
    implements $ParametersCopyWith<$Res> {
  _$ParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? live = null,
  }) {
    return _then(_value.copyWith(
      live: null == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParametersCopyWith<$Res>
    implements $ParametersCopyWith<$Res> {
  factory _$$_ParametersCopyWith(
          _$_Parameters value, $Res Function(_$_Parameters) then) =
      __$$_ParametersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String live});
}

/// @nodoc
class __$$_ParametersCopyWithImpl<$Res>
    extends _$ParametersCopyWithImpl<$Res, _$_Parameters>
    implements _$$_ParametersCopyWith<$Res> {
  __$$_ParametersCopyWithImpl(
      _$_Parameters _value, $Res Function(_$_Parameters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? live = null,
  }) {
    return _then(_$_Parameters(
      live: null == live
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Parameters implements _Parameters {
  const _$_Parameters({required this.live});

  factory _$_Parameters.fromJson(Map<String, dynamic> json) =>
      _$$_ParametersFromJson(json);

  @override
  final String live;

  @override
  String toString() {
    return 'Parameters(live: $live)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Parameters &&
            (identical(other.live, live) || other.live == live));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, live);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParametersCopyWith<_$_Parameters> get copyWith =>
      __$$_ParametersCopyWithImpl<_$_Parameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParametersToJson(
      this,
    );
  }
}

abstract class _Parameters implements Parameters {
  const factory _Parameters({required final String live}) = _$_Parameters;

  factory _Parameters.fromJson(Map<String, dynamic> json) =
      _$_Parameters.fromJson;

  @override
  String get live;
  @override
  @JsonKey(ignore: true)
  _$$_ParametersCopyWith<_$_Parameters> get copyWith =>
      throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
mixin _$Response {
  Fixture get fixture => throw _privateConstructorUsedError;
  League get league => throw _privateConstructorUsedError;
  Goals get teams => throw _privateConstructorUsedError;
  Goals get goals => throw _privateConstructorUsedError;
  Score get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res, Response>;
  @useResult
  $Res call(
      {Fixture fixture, League league, Goals teams, Goals goals, Score score});

  $FixtureCopyWith<$Res> get fixture;
  $LeagueCopyWith<$Res> get league;
  $GoalsCopyWith<$Res> get teams;
  $GoalsCopyWith<$Res> get goals;
  $ScoreCopyWith<$Res> get score;
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res, $Val extends Response>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixture = null,
    Object? league = null,
    Object? teams = null,
    Object? goals = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      fixture: null == fixture
          ? _value.fixture
          : fixture // ignore: cast_nullable_to_non_nullable
              as Fixture,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Goals,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Score,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FixtureCopyWith<$Res> get fixture {
    return $FixtureCopyWith<$Res>(_value.fixture, (value) {
      return _then(_value.copyWith(fixture: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueCopyWith<$Res> get league {
    return $LeagueCopyWith<$Res>(_value.league, (value) {
      return _then(_value.copyWith(league: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get teams {
    return $GoalsCopyWith<$Res>(_value.teams, (value) {
      return _then(_value.copyWith(teams: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get goals {
    return $GoalsCopyWith<$Res>(_value.goals, (value) {
      return _then(_value.copyWith(goals: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoreCopyWith<$Res> get score {
    return $ScoreCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$$_ResponseCopyWith(
          _$_Response value, $Res Function(_$_Response) then) =
      __$$_ResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Fixture fixture, League league, Goals teams, Goals goals, Score score});

  @override
  $FixtureCopyWith<$Res> get fixture;
  @override
  $LeagueCopyWith<$Res> get league;
  @override
  $GoalsCopyWith<$Res> get teams;
  @override
  $GoalsCopyWith<$Res> get goals;
  @override
  $ScoreCopyWith<$Res> get score;
}

/// @nodoc
class __$$_ResponseCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$_Response>
    implements _$$_ResponseCopyWith<$Res> {
  __$$_ResponseCopyWithImpl(
      _$_Response _value, $Res Function(_$_Response) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixture = null,
    Object? league = null,
    Object? teams = null,
    Object? goals = null,
    Object? score = null,
  }) {
    return _then(_$_Response(
      fixture: null == fixture
          ? _value.fixture
          : fixture // ignore: cast_nullable_to_non_nullable
              as Fixture,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Goals,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Goals,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Score,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Response implements _Response {
  const _$_Response(
      {required this.fixture,
      required this.league,
      required this.teams,
      required this.goals,
      required this.score});

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  final Fixture fixture;
  @override
  final League league;
  @override
  final Goals teams;
  @override
  final Goals goals;
  @override
  final Score score;

  @override
  String toString() {
    return 'Response(fixture: $fixture, league: $league, teams: $teams, goals: $goals, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Response &&
            (identical(other.fixture, fixture) || other.fixture == fixture) &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.teams, teams) || other.teams == teams) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fixture, league, teams, goals, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      __$$_ResponseCopyWithImpl<_$_Response>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseToJson(
      this,
    );
  }
}

abstract class _Response implements Response {
  const factory _Response(
      {required final Fixture fixture,
      required final League league,
      required final Goals teams,
      required final Goals goals,
      required final Score score}) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  Fixture get fixture;
  @override
  League get league;
  @override
  Goals get teams;
  @override
  Goals get goals;
  @override
  Score get score;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      throw _privateConstructorUsedError;
}

Fixture _$FixtureFromJson(Map<String, dynamic> json) {
  return _Fixture.fromJson(json);
}

/// @nodoc
mixin _$Fixture {
  int get id => throw _privateConstructorUsedError;
  dynamic get referee => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  Periods get periods => throw _privateConstructorUsedError;
  Venue get venue => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixtureCopyWith<Fixture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureCopyWith<$Res> {
  factory $FixtureCopyWith(Fixture value, $Res Function(Fixture) then) =
      _$FixtureCopyWithImpl<$Res, Fixture>;
  @useResult
  $Res call(
      {int id,
      dynamic referee,
      String timezone,
      DateTime date,
      int timestamp,
      Periods periods,
      Venue venue,
      Status status});

  $PeriodsCopyWith<$Res> get periods;
  $VenueCopyWith<$Res> get venue;
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FixtureCopyWithImpl<$Res, $Val extends Fixture>
    implements $FixtureCopyWith<$Res> {
  _$FixtureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referee = freezed,
    Object? timezone = null,
    Object? date = null,
    Object? timestamp = null,
    Object? periods = null,
    Object? venue = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      periods: null == periods
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as Periods,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodsCopyWith<$Res> get periods {
    return $PeriodsCopyWith<$Res>(_value.periods, (value) {
      return _then(_value.copyWith(periods: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res> get venue {
    return $VenueCopyWith<$Res>(_value.venue, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FixtureCopyWith<$Res> implements $FixtureCopyWith<$Res> {
  factory _$$_FixtureCopyWith(
          _$_Fixture value, $Res Function(_$_Fixture) then) =
      __$$_FixtureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      dynamic referee,
      String timezone,
      DateTime date,
      int timestamp,
      Periods periods,
      Venue venue,
      Status status});

  @override
  $PeriodsCopyWith<$Res> get periods;
  @override
  $VenueCopyWith<$Res> get venue;
  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_FixtureCopyWithImpl<$Res>
    extends _$FixtureCopyWithImpl<$Res, _$_Fixture>
    implements _$$_FixtureCopyWith<$Res> {
  __$$_FixtureCopyWithImpl(_$_Fixture _value, $Res Function(_$_Fixture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? referee = freezed,
    Object? timezone = null,
    Object? date = null,
    Object? timestamp = null,
    Object? periods = null,
    Object? venue = null,
    Object? status = null,
  }) {
    return _then(_$_Fixture(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      periods: null == periods
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as Periods,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fixture implements _Fixture {
  const _$_Fixture(
      {required this.id,
      required this.referee,
      required this.timezone,
      required this.date,
      required this.timestamp,
      required this.periods,
      required this.venue,
      required this.status});

  factory _$_Fixture.fromJson(Map<String, dynamic> json) =>
      _$$_FixtureFromJson(json);

  @override
  final int id;
  @override
  final dynamic referee;
  @override
  final String timezone;
  @override
  final DateTime date;
  @override
  final int timestamp;
  @override
  final Periods periods;
  @override
  final Venue venue;
  @override
  final Status status;

  @override
  String toString() {
    return 'Fixture(id: $id, referee: $referee, timezone: $timezone, date: $date, timestamp: $timestamp, periods: $periods, venue: $venue, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fixture &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.referee, referee) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.periods, periods) || other.periods == periods) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(referee),
      timezone,
      date,
      timestamp,
      periods,
      venue,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FixtureCopyWith<_$_Fixture> get copyWith =>
      __$$_FixtureCopyWithImpl<_$_Fixture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FixtureToJson(
      this,
    );
  }
}

abstract class _Fixture implements Fixture {
  const factory _Fixture(
      {required final int id,
      required final dynamic referee,
      required final String timezone,
      required final DateTime date,
      required final int timestamp,
      required final Periods periods,
      required final Venue venue,
      required final Status status}) = _$_Fixture;

  factory _Fixture.fromJson(Map<String, dynamic> json) = _$_Fixture.fromJson;

  @override
  int get id;
  @override
  dynamic get referee;
  @override
  String get timezone;
  @override
  DateTime get date;
  @override
  int get timestamp;
  @override
  Periods get periods;
  @override
  Venue get venue;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$_FixtureCopyWith<_$_Fixture> get copyWith =>
      throw _privateConstructorUsedError;
}

Periods _$PeriodsFromJson(Map<String, dynamic> json) {
  return _Periods.fromJson(json);
}

/// @nodoc
mixin _$Periods {
  int get first => throw _privateConstructorUsedError;
  dynamic get second => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodsCopyWith<Periods> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodsCopyWith<$Res> {
  factory $PeriodsCopyWith(Periods value, $Res Function(Periods) then) =
      _$PeriodsCopyWithImpl<$Res, Periods>;
  @useResult
  $Res call({int first, dynamic second});
}

/// @nodoc
class _$PeriodsCopyWithImpl<$Res, $Val extends Periods>
    implements $PeriodsCopyWith<$Res> {
  _$PeriodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeriodsCopyWith<$Res> implements $PeriodsCopyWith<$Res> {
  factory _$$_PeriodsCopyWith(
          _$_Periods value, $Res Function(_$_Periods) then) =
      __$$_PeriodsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int first, dynamic second});
}

/// @nodoc
class __$$_PeriodsCopyWithImpl<$Res>
    extends _$PeriodsCopyWithImpl<$Res, _$_Periods>
    implements _$$_PeriodsCopyWith<$Res> {
  __$$_PeriodsCopyWithImpl(_$_Periods _value, $Res Function(_$_Periods) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? second = freezed,
  }) {
    return _then(_$_Periods(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Periods implements _Periods {
  const _$_Periods({required this.first, required this.second});

  factory _$_Periods.fromJson(Map<String, dynamic> json) =>
      _$$_PeriodsFromJson(json);

  @override
  final int first;
  @override
  final dynamic second;

  @override
  String toString() {
    return 'Periods(first: $first, second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Periods &&
            (identical(other.first, first) || other.first == first) &&
            const DeepCollectionEquality().equals(other.second, second));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, first, const DeepCollectionEquality().hash(second));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeriodsCopyWith<_$_Periods> get copyWith =>
      __$$_PeriodsCopyWithImpl<_$_Periods>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeriodsToJson(
      this,
    );
  }
}

abstract class _Periods implements Periods {
  const factory _Periods(
      {required final int first, required final dynamic second}) = _$_Periods;

  factory _Periods.fromJson(Map<String, dynamic> json) = _$_Periods.fromJson;

  @override
  int get first;
  @override
  dynamic get second;
  @override
  @JsonKey(ignore: true)
  _$$_PeriodsCopyWith<_$_Periods> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  String get long => throw _privateConstructorUsedError;
  String get short => throw _privateConstructorUsedError;
  int get elapsed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({String long, String short, int elapsed});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long = null,
    Object? short = null,
    Object? elapsed = null,
  }) {
    return _then(_value.copyWith(
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      elapsed: null == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String long, String short, int elapsed});
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$_Status>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long = null,
    Object? short = null,
    Object? elapsed = null,
  }) {
    return _then(_$_Status(
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      elapsed: null == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Status implements _Status {
  const _$_Status(
      {required this.long, required this.short, required this.elapsed});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  final String long;
  @override
  final String short;
  @override
  final int elapsed;

  @override
  String toString() {
    return 'Status(long: $long, short: $short, elapsed: $elapsed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.elapsed, elapsed) || other.elapsed == elapsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, long, short, elapsed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {required final String long,
      required final String short,
      required final int elapsed}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  String get long;
  @override
  String get short;
  @override
  int get elapsed;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}

Venue _$VenueFromJson(Map<String, dynamic> json) {
  return _Venue.fromJson(json);
}

/// @nodoc
mixin _$Venue {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VenueCopyWith<Venue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueCopyWith<$Res> {
  factory $VenueCopyWith(Venue value, $Res Function(Venue) then) =
      _$VenueCopyWithImpl<$Res, Venue>;
  @useResult
  $Res call({int id, String name, String city});
}

/// @nodoc
class _$VenueCopyWithImpl<$Res, $Val extends Venue>
    implements $VenueCopyWith<$Res> {
  _$VenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VenueCopyWith<$Res> implements $VenueCopyWith<$Res> {
  factory _$$_VenueCopyWith(_$_Venue value, $Res Function(_$_Venue) then) =
      __$$_VenueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String city});
}

/// @nodoc
class __$$_VenueCopyWithImpl<$Res> extends _$VenueCopyWithImpl<$Res, _$_Venue>
    implements _$$_VenueCopyWith<$Res> {
  __$$_VenueCopyWithImpl(_$_Venue _value, $Res Function(_$_Venue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? city = null,
  }) {
    return _then(_$_Venue(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Venue implements _Venue {
  const _$_Venue({required this.id, required this.name, required this.city});

  factory _$_Venue.fromJson(Map<String, dynamic> json) =>
      _$$_VenueFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String city;

  @override
  String toString() {
    return 'Venue(id: $id, name: $name, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Venue &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VenueCopyWith<_$_Venue> get copyWith =>
      __$$_VenueCopyWithImpl<_$_Venue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VenueToJson(
      this,
    );
  }
}

abstract class _Venue implements Venue {
  const factory _Venue(
      {required final int id,
      required final String name,
      required final String city}) = _$_Venue;

  factory _Venue.fromJson(Map<String, dynamic> json) = _$_Venue.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get city;
  @override
  @JsonKey(ignore: true)
  _$$_VenueCopyWith<_$_Venue> get copyWith =>
      throw _privateConstructorUsedError;
}

Goals _$GoalsFromJson(Map<String, dynamic> json) {
  return _Goals.fromJson(json);
}

/// @nodoc
mixin _$Goals {
  dynamic get home => throw _privateConstructorUsedError;
  dynamic get away => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalsCopyWith<Goals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsCopyWith<$Res> {
  factory $GoalsCopyWith(Goals value, $Res Function(Goals) then) =
      _$GoalsCopyWithImpl<$Res, Goals>;
  @useResult
  $Res call({dynamic home, dynamic away});
}

/// @nodoc
class _$GoalsCopyWithImpl<$Res, $Val extends Goals>
    implements $GoalsCopyWith<$Res> {
  _$GoalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_value.copyWith(
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as dynamic,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoalsCopyWith<$Res> implements $GoalsCopyWith<$Res> {
  factory _$$_GoalsCopyWith(_$_Goals value, $Res Function(_$_Goals) then) =
      __$$_GoalsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic home, dynamic away});
}

/// @nodoc
class __$$_GoalsCopyWithImpl<$Res> extends _$GoalsCopyWithImpl<$Res, _$_Goals>
    implements _$$_GoalsCopyWith<$Res> {
  __$$_GoalsCopyWithImpl(_$_Goals _value, $Res Function(_$_Goals) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = freezed,
    Object? away = freezed,
  }) {
    return _then(_$_Goals(
      home: freezed == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as dynamic,
      away: freezed == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Goals implements _Goals {
  const _$_Goals({required this.home, required this.away});

  factory _$_Goals.fromJson(Map<String, dynamic> json) =>
      _$$_GoalsFromJson(json);

  @override
  final dynamic home;
  @override
  final dynamic away;

  @override
  String toString() {
    return 'Goals(home: $home, away: $away)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Goals &&
            const DeepCollectionEquality().equals(other.home, home) &&
            const DeepCollectionEquality().equals(other.away, away));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(home),
      const DeepCollectionEquality().hash(away));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoalsCopyWith<_$_Goals> get copyWith =>
      __$$_GoalsCopyWithImpl<_$_Goals>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalsToJson(
      this,
    );
  }
}

abstract class _Goals implements Goals {
  const factory _Goals(
      {required final dynamic home, required final dynamic away}) = _$_Goals;

  factory _Goals.fromJson(Map<String, dynamic> json) = _$_Goals.fromJson;

  @override
  dynamic get home;
  @override
  dynamic get away;
  @override
  @JsonKey(ignore: true)
  _$$_GoalsCopyWith<_$_Goals> get copyWith =>
      throw _privateConstructorUsedError;
}

AwayClass _$AwayClassFromJson(Map<String, dynamic> json) {
  return _AwayClass.fromJson(json);
}

/// @nodoc
mixin _$AwayClass {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  bool get winner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AwayClassCopyWith<AwayClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AwayClassCopyWith<$Res> {
  factory $AwayClassCopyWith(AwayClass value, $Res Function(AwayClass) then) =
      _$AwayClassCopyWithImpl<$Res, AwayClass>;
  @useResult
  $Res call({int id, String name, String logo, bool winner});
}

/// @nodoc
class _$AwayClassCopyWithImpl<$Res, $Val extends AwayClass>
    implements $AwayClassCopyWith<$Res> {
  _$AwayClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
    Object? winner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AwayClassCopyWith<$Res> implements $AwayClassCopyWith<$Res> {
  factory _$$_AwayClassCopyWith(
          _$_AwayClass value, $Res Function(_$_AwayClass) then) =
      __$$_AwayClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String logo, bool winner});
}

/// @nodoc
class __$$_AwayClassCopyWithImpl<$Res>
    extends _$AwayClassCopyWithImpl<$Res, _$_AwayClass>
    implements _$$_AwayClassCopyWith<$Res> {
  __$$_AwayClassCopyWithImpl(
      _$_AwayClass _value, $Res Function(_$_AwayClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
    Object? winner = null,
  }) {
    return _then(_$_AwayClass(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AwayClass implements _AwayClass {
  const _$_AwayClass(
      {required this.id,
      required this.name,
      required this.logo,
      required this.winner});

  factory _$_AwayClass.fromJson(Map<String, dynamic> json) =>
      _$$_AwayClassFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String logo;
  @override
  final bool winner;

  @override
  String toString() {
    return 'AwayClass(id: $id, name: $name, logo: $logo, winner: $winner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AwayClass &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.winner, winner) || other.winner == winner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo, winner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AwayClassCopyWith<_$_AwayClass> get copyWith =>
      __$$_AwayClassCopyWithImpl<_$_AwayClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AwayClassToJson(
      this,
    );
  }
}

abstract class _AwayClass implements AwayClass {
  const factory _AwayClass(
      {required final int id,
      required final String name,
      required final String logo,
      required final bool winner}) = _$_AwayClass;

  factory _AwayClass.fromJson(Map<String, dynamic> json) =
      _$_AwayClass.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get logo;
  @override
  bool get winner;
  @override
  @JsonKey(ignore: true)
  _$$_AwayClassCopyWith<_$_AwayClass> get copyWith =>
      throw _privateConstructorUsedError;
}

League _$LeagueFromJson(Map<String, dynamic> json) {
  return _League.fromJson(json);
}

/// @nodoc
mixin _$League {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;
  int get season => throw _privateConstructorUsedError;
  String get round => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueCopyWith<League> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueCopyWith<$Res> {
  factory $LeagueCopyWith(League value, $Res Function(League) then) =
      _$LeagueCopyWithImpl<$Res, League>;
  @useResult
  $Res call(
      {int id,
      String name,
      String country,
      String logo,
      String flag,
      int season,
      String round});
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
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? logo = null,
    Object? flag = null,
    Object? season = null,
    Object? round = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeagueCopyWith<$Res> implements $LeagueCopyWith<$Res> {
  factory _$$_LeagueCopyWith(_$_League value, $Res Function(_$_League) then) =
      __$$_LeagueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String country,
      String logo,
      String flag,
      int season,
      String round});
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
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? logo = null,
    Object? flag = null,
    Object? season = null,
    Object? round = null,
  }) {
    return _then(_$_League(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_League implements _League {
  const _$_League(
      {required this.id,
      required this.name,
      required this.country,
      required this.logo,
      required this.flag,
      required this.season,
      required this.round});

  factory _$_League.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String country;
  @override
  final String logo;
  @override
  final String flag;
  @override
  final int season;
  @override
  final String round;

  @override
  String toString() {
    return 'League(id: $id, name: $name, country: $country, logo: $logo, flag: $flag, season: $season, round: $round)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_League &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.round, round) || other.round == round));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, country, logo, flag, season, round);

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
  const factory _League(
      {required final int id,
      required final String name,
      required final String country,
      required final String logo,
      required final String flag,
      required final int season,
      required final String round}) = _$_League;

  factory _League.fromJson(Map<String, dynamic> json) = _$_League.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get country;
  @override
  String get logo;
  @override
  String get flag;
  @override
  int get season;
  @override
  String get round;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueCopyWith<_$_League> get copyWith =>
      throw _privateConstructorUsedError;
}

Score _$ScoreFromJson(Map<String, dynamic> json) {
  return _Score.fromJson(json);
}

/// @nodoc
mixin _$Score {
  Goals get halftime => throw _privateConstructorUsedError;
  Goals get fulltime => throw _privateConstructorUsedError;
  Goals get extratime => throw _privateConstructorUsedError;
  Goals get penalty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreCopyWith<Score> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreCopyWith<$Res> {
  factory $ScoreCopyWith(Score value, $Res Function(Score) then) =
      _$ScoreCopyWithImpl<$Res, Score>;
  @useResult
  $Res call({Goals halftime, Goals fulltime, Goals extratime, Goals penalty});

  $GoalsCopyWith<$Res> get halftime;
  $GoalsCopyWith<$Res> get fulltime;
  $GoalsCopyWith<$Res> get extratime;
  $GoalsCopyWith<$Res> get penalty;
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
    Object? halftime = null,
    Object? fulltime = null,
    Object? extratime = null,
    Object? penalty = null,
  }) {
    return _then(_value.copyWith(
      halftime: null == halftime
          ? _value.halftime
          : halftime // ignore: cast_nullable_to_non_nullable
              as Goals,
      fulltime: null == fulltime
          ? _value.fulltime
          : fulltime // ignore: cast_nullable_to_non_nullable
              as Goals,
      extratime: null == extratime
          ? _value.extratime
          : extratime // ignore: cast_nullable_to_non_nullable
              as Goals,
      penalty: null == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as Goals,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get halftime {
    return $GoalsCopyWith<$Res>(_value.halftime, (value) {
      return _then(_value.copyWith(halftime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get fulltime {
    return $GoalsCopyWith<$Res>(_value.fulltime, (value) {
      return _then(_value.copyWith(fulltime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get extratime {
    return $GoalsCopyWith<$Res>(_value.extratime, (value) {
      return _then(_value.copyWith(extratime: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GoalsCopyWith<$Res> get penalty {
    return $GoalsCopyWith<$Res>(_value.penalty, (value) {
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
  $Res call({Goals halftime, Goals fulltime, Goals extratime, Goals penalty});

  @override
  $GoalsCopyWith<$Res> get halftime;
  @override
  $GoalsCopyWith<$Res> get fulltime;
  @override
  $GoalsCopyWith<$Res> get extratime;
  @override
  $GoalsCopyWith<$Res> get penalty;
}

/// @nodoc
class __$$_ScoreCopyWithImpl<$Res> extends _$ScoreCopyWithImpl<$Res, _$_Score>
    implements _$$_ScoreCopyWith<$Res> {
  __$$_ScoreCopyWithImpl(_$_Score _value, $Res Function(_$_Score) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? halftime = null,
    Object? fulltime = null,
    Object? extratime = null,
    Object? penalty = null,
  }) {
    return _then(_$_Score(
      halftime: null == halftime
          ? _value.halftime
          : halftime // ignore: cast_nullable_to_non_nullable
              as Goals,
      fulltime: null == fulltime
          ? _value.fulltime
          : fulltime // ignore: cast_nullable_to_non_nullable
              as Goals,
      extratime: null == extratime
          ? _value.extratime
          : extratime // ignore: cast_nullable_to_non_nullable
              as Goals,
      penalty: null == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as Goals,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Score implements _Score {
  const _$_Score(
      {required this.halftime,
      required this.fulltime,
      required this.extratime,
      required this.penalty});

  factory _$_Score.fromJson(Map<String, dynamic> json) =>
      _$$_ScoreFromJson(json);

  @override
  final Goals halftime;
  @override
  final Goals fulltime;
  @override
  final Goals extratime;
  @override
  final Goals penalty;

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
      {required final Goals halftime,
      required final Goals fulltime,
      required final Goals extratime,
      required final Goals penalty}) = _$_Score;

  factory _Score.fromJson(Map<String, dynamic> json) = _$_Score.fromJson;

  @override
  Goals get halftime;
  @override
  Goals get fulltime;
  @override
  Goals get extratime;
  @override
  Goals get penalty;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreCopyWith<_$_Score> get copyWith =>
      throw _privateConstructorUsedError;
}
