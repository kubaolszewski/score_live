// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'league_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeagueModel _$LeagueModelFromJson(Map<String, dynamic> json) {
  return _LeagueModel.fromJson(json);
}

/// @nodoc
mixin _$LeagueModel {
  League? get league => throw _privateConstructorUsedError;
  Country? get country => throw _privateConstructorUsedError;
  List<Season>? get seasons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueModelCopyWith<LeagueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueModelCopyWith<$Res> {
  factory $LeagueModelCopyWith(
          LeagueModel value, $Res Function(LeagueModel) then) =
      _$LeagueModelCopyWithImpl<$Res, LeagueModel>;
  @useResult
  $Res call({League? league, Country? country, List<Season>? seasons});

  $LeagueCopyWith<$Res>? get league;
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$LeagueModelCopyWithImpl<$Res, $Val extends LeagueModel>
    implements $LeagueModelCopyWith<$Res> {
  _$LeagueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? league = freezed,
    Object? country = freezed,
    Object? seasons = freezed,
  }) {
    return _then(_value.copyWith(
      league: freezed == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      seasons: freezed == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueCopyWith<$Res>? get league {
    if (_value.league == null) {
      return null;
    }

    return $LeagueCopyWith<$Res>(_value.league!, (value) {
      return _then(_value.copyWith(league: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LeagueModelCopyWith<$Res>
    implements $LeagueModelCopyWith<$Res> {
  factory _$$_LeagueModelCopyWith(
          _$_LeagueModel value, $Res Function(_$_LeagueModel) then) =
      __$$_LeagueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({League? league, Country? country, List<Season>? seasons});

  @override
  $LeagueCopyWith<$Res>? get league;
  @override
  $CountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$$_LeagueModelCopyWithImpl<$Res>
    extends _$LeagueModelCopyWithImpl<$Res, _$_LeagueModel>
    implements _$$_LeagueModelCopyWith<$Res> {
  __$$_LeagueModelCopyWithImpl(
      _$_LeagueModel _value, $Res Function(_$_LeagueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? league = freezed,
    Object? country = freezed,
    Object? seasons = freezed,
  }) {
    return _then(_$_LeagueModel(
      league: freezed == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country?,
      seasons: freezed == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeagueModel implements _LeagueModel {
  const _$_LeagueModel({this.league, this.country, final List<Season>? seasons})
      : _seasons = seasons;

  factory _$_LeagueModel.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueModelFromJson(json);

  @override
  final League? league;
  @override
  final Country? country;
  final List<Season>? _seasons;
  @override
  List<Season>? get seasons {
    final value = _seasons;
    if (value == null) return null;
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LeagueModel(league: $league, country: $country, seasons: $seasons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeagueModel &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, league, country,
      const DeepCollectionEquality().hash(_seasons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeagueModelCopyWith<_$_LeagueModel> get copyWith =>
      __$$_LeagueModelCopyWithImpl<_$_LeagueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueModelToJson(
      this,
    );
  }
}

abstract class _LeagueModel implements LeagueModel {
  const factory _LeagueModel(
      {final League? league,
      final Country? country,
      final List<Season>? seasons}) = _$_LeagueModel;

  factory _LeagueModel.fromJson(Map<String, dynamic> json) =
      _$_LeagueModel.fromJson;

  @override
  League? get league;
  @override
  Country? get country;
  @override
  List<Season>? get seasons;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueModelCopyWith<_$_LeagueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  String? get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({String? name, String? code, String? flag});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? flag = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$_CountryCopyWith(
          _$_Country value, $Res Function(_$_Country) then) =
      __$$_CountryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? code, String? flag});
}

/// @nodoc
class __$$_CountryCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$_Country>
    implements _$$_CountryCopyWith<$Res> {
  __$$_CountryCopyWithImpl(_$_Country _value, $Res Function(_$_Country) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? flag = freezed,
  }) {
    return _then(_$_Country(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country implements _Country {
  const _$_Country({this.name, this.code, this.flag});

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? flag;

  @override
  String toString() {
    return 'Country(name: $name, code: $code, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Country &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      __$$_CountryCopyWithImpl<_$_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(
      this,
    );
  }
}

abstract class _Country implements Country {
  const factory _Country(
      {final String? name,
      final String? code,
      final String? flag}) = _$_Country;

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  String? get name;
  @override
  String? get code;
  @override
  String? get flag;
  @override
  @JsonKey(ignore: true)
  _$$_CountryCopyWith<_$_Country> get copyWith =>
      throw _privateConstructorUsedError;
}

League _$LeagueFromJson(Map<String, dynamic> json) {
  return _League.fromJson(json);
}

/// @nodoc
mixin _$League {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueCopyWith<League> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueCopyWith<$Res> {
  factory $LeagueCopyWith(League value, $Res Function(League) then) =
      _$LeagueCopyWithImpl<$Res, League>;
  @useResult
  $Res call({int? id, String? name, String? type, String? logo});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeagueCopyWith<$Res> implements $LeagueCopyWith<$Res> {
  factory _$$_LeagueCopyWith(_$_League value, $Res Function(_$_League) then) =
      __$$_LeagueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? type, String? logo});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$_League(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
class _$_League implements _League {
  const _$_League({this.id, this.name, this.type, this.logo});

  factory _$_League.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? logo;

  @override
  String toString() {
    return 'League(id: $id, name: $name, type: $type, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_League &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, logo);

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
      {final int? id,
      final String? name,
      final String? type,
      final String? logo}) = _$_League;

  factory _League.fromJson(Map<String, dynamic> json) = _$_League.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueCopyWith<_$_League> get copyWith =>
      throw _privateConstructorUsedError;
}

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  int? get year => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  bool? get current => throw _privateConstructorUsedError;
  Coverage? get coverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res, Season>;
  @useResult
  $Res call(
      {int? year,
      DateTime? start,
      DateTime? end,
      bool? current,
      Coverage? coverage});

  $CoverageCopyWith<$Res>? get coverage;
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res, $Val extends Season>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? current = freezed,
    Object? coverage = freezed,
  }) {
    return _then(_value.copyWith(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool?,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoverageCopyWith<$Res>? get coverage {
    if (_value.coverage == null) {
      return null;
    }

    return $CoverageCopyWith<$Res>(_value.coverage!, (value) {
      return _then(_value.copyWith(coverage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SeasonCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$_SeasonCopyWith(_$_Season value, $Res Function(_$_Season) then) =
      __$$_SeasonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? year,
      DateTime? start,
      DateTime? end,
      bool? current,
      Coverage? coverage});

  @override
  $CoverageCopyWith<$Res>? get coverage;
}

/// @nodoc
class __$$_SeasonCopyWithImpl<$Res>
    extends _$SeasonCopyWithImpl<$Res, _$_Season>
    implements _$$_SeasonCopyWith<$Res> {
  __$$_SeasonCopyWithImpl(_$_Season _value, $Res Function(_$_Season) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? current = freezed,
    Object? coverage = freezed,
  }) {
    return _then(_$_Season(
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool?,
      coverage: freezed == coverage
          ? _value.coverage
          : coverage // ignore: cast_nullable_to_non_nullable
              as Coverage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Season implements _Season {
  const _$_Season(
      {this.year, this.start, this.end, this.current, this.coverage});

  factory _$_Season.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonFromJson(json);

  @override
  final int? year;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final bool? current;
  @override
  final Coverage? coverage;

  @override
  String toString() {
    return 'Season(year: $year, start: $start, end: $end, current: $current, coverage: $coverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Season &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.coverage, coverage) ||
                other.coverage == coverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, year, start, end, current, coverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      __$$_SeasonCopyWithImpl<_$_Season>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonToJson(
      this,
    );
  }
}

abstract class _Season implements Season {
  const factory _Season(
      {final int? year,
      final DateTime? start,
      final DateTime? end,
      final bool? current,
      final Coverage? coverage}) = _$_Season;

  factory _Season.fromJson(Map<String, dynamic> json) = _$_Season.fromJson;

  @override
  int? get year;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  bool? get current;
  @override
  Coverage? get coverage;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonCopyWith<_$_Season> get copyWith =>
      throw _privateConstructorUsedError;
}

Coverage _$CoverageFromJson(Map<String, dynamic> json) {
  return _Coverage.fromJson(json);
}

/// @nodoc
mixin _$Coverage {
  Fixtures? get fixtures => throw _privateConstructorUsedError;
  bool? get standings => throw _privateConstructorUsedError;
  bool? get players => throw _privateConstructorUsedError;
  bool? get topScorers => throw _privateConstructorUsedError;
  bool? get topAssists => throw _privateConstructorUsedError;
  bool? get topCards => throw _privateConstructorUsedError;
  bool? get injuries => throw _privateConstructorUsedError;
  bool? get predictions => throw _privateConstructorUsedError;
  bool? get odds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverageCopyWith<Coverage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverageCopyWith<$Res> {
  factory $CoverageCopyWith(Coverage value, $Res Function(Coverage) then) =
      _$CoverageCopyWithImpl<$Res, Coverage>;
  @useResult
  $Res call(
      {Fixtures? fixtures,
      bool? standings,
      bool? players,
      bool? topScorers,
      bool? topAssists,
      bool? topCards,
      bool? injuries,
      bool? predictions,
      bool? odds});

  $FixturesCopyWith<$Res>? get fixtures;
}

/// @nodoc
class _$CoverageCopyWithImpl<$Res, $Val extends Coverage>
    implements $CoverageCopyWith<$Res> {
  _$CoverageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixtures = freezed,
    Object? standings = freezed,
    Object? players = freezed,
    Object? topScorers = freezed,
    Object? topAssists = freezed,
    Object? topCards = freezed,
    Object? injuries = freezed,
    Object? predictions = freezed,
    Object? odds = freezed,
  }) {
    return _then(_value.copyWith(
      fixtures: freezed == fixtures
          ? _value.fixtures
          : fixtures // ignore: cast_nullable_to_non_nullable
              as Fixtures?,
      standings: freezed == standings
          ? _value.standings
          : standings // ignore: cast_nullable_to_non_nullable
              as bool?,
      players: freezed == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as bool?,
      topScorers: freezed == topScorers
          ? _value.topScorers
          : topScorers // ignore: cast_nullable_to_non_nullable
              as bool?,
      topAssists: freezed == topAssists
          ? _value.topAssists
          : topAssists // ignore: cast_nullable_to_non_nullable
              as bool?,
      topCards: freezed == topCards
          ? _value.topCards
          : topCards // ignore: cast_nullable_to_non_nullable
              as bool?,
      injuries: freezed == injuries
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as bool?,
      predictions: freezed == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as bool?,
      odds: freezed == odds
          ? _value.odds
          : odds // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FixturesCopyWith<$Res>? get fixtures {
    if (_value.fixtures == null) {
      return null;
    }

    return $FixturesCopyWith<$Res>(_value.fixtures!, (value) {
      return _then(_value.copyWith(fixtures: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CoverageCopyWith<$Res> implements $CoverageCopyWith<$Res> {
  factory _$$_CoverageCopyWith(
          _$_Coverage value, $Res Function(_$_Coverage) then) =
      __$$_CoverageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Fixtures? fixtures,
      bool? standings,
      bool? players,
      bool? topScorers,
      bool? topAssists,
      bool? topCards,
      bool? injuries,
      bool? predictions,
      bool? odds});

  @override
  $FixturesCopyWith<$Res>? get fixtures;
}

/// @nodoc
class __$$_CoverageCopyWithImpl<$Res>
    extends _$CoverageCopyWithImpl<$Res, _$_Coverage>
    implements _$$_CoverageCopyWith<$Res> {
  __$$_CoverageCopyWithImpl(
      _$_Coverage _value, $Res Function(_$_Coverage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixtures = freezed,
    Object? standings = freezed,
    Object? players = freezed,
    Object? topScorers = freezed,
    Object? topAssists = freezed,
    Object? topCards = freezed,
    Object? injuries = freezed,
    Object? predictions = freezed,
    Object? odds = freezed,
  }) {
    return _then(_$_Coverage(
      fixtures: freezed == fixtures
          ? _value.fixtures
          : fixtures // ignore: cast_nullable_to_non_nullable
              as Fixtures?,
      standings: freezed == standings
          ? _value.standings
          : standings // ignore: cast_nullable_to_non_nullable
              as bool?,
      players: freezed == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as bool?,
      topScorers: freezed == topScorers
          ? _value.topScorers
          : topScorers // ignore: cast_nullable_to_non_nullable
              as bool?,
      topAssists: freezed == topAssists
          ? _value.topAssists
          : topAssists // ignore: cast_nullable_to_non_nullable
              as bool?,
      topCards: freezed == topCards
          ? _value.topCards
          : topCards // ignore: cast_nullable_to_non_nullable
              as bool?,
      injuries: freezed == injuries
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as bool?,
      predictions: freezed == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as bool?,
      odds: freezed == odds
          ? _value.odds
          : odds // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coverage implements _Coverage {
  const _$_Coverage(
      {this.fixtures,
      this.standings,
      this.players,
      this.topScorers,
      this.topAssists,
      this.topCards,
      this.injuries,
      this.predictions,
      this.odds});

  factory _$_Coverage.fromJson(Map<String, dynamic> json) =>
      _$$_CoverageFromJson(json);

  @override
  final Fixtures? fixtures;
  @override
  final bool? standings;
  @override
  final bool? players;
  @override
  final bool? topScorers;
  @override
  final bool? topAssists;
  @override
  final bool? topCards;
  @override
  final bool? injuries;
  @override
  final bool? predictions;
  @override
  final bool? odds;

  @override
  String toString() {
    return 'Coverage(fixtures: $fixtures, standings: $standings, players: $players, topScorers: $topScorers, topAssists: $topAssists, topCards: $topCards, injuries: $injuries, predictions: $predictions, odds: $odds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coverage &&
            (identical(other.fixtures, fixtures) ||
                other.fixtures == fixtures) &&
            (identical(other.standings, standings) ||
                other.standings == standings) &&
            (identical(other.players, players) || other.players == players) &&
            (identical(other.topScorers, topScorers) ||
                other.topScorers == topScorers) &&
            (identical(other.topAssists, topAssists) ||
                other.topAssists == topAssists) &&
            (identical(other.topCards, topCards) ||
                other.topCards == topCards) &&
            (identical(other.injuries, injuries) ||
                other.injuries == injuries) &&
            (identical(other.predictions, predictions) ||
                other.predictions == predictions) &&
            (identical(other.odds, odds) || other.odds == odds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fixtures, standings, players,
      topScorers, topAssists, topCards, injuries, predictions, odds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoverageCopyWith<_$_Coverage> get copyWith =>
      __$$_CoverageCopyWithImpl<_$_Coverage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoverageToJson(
      this,
    );
  }
}

abstract class _Coverage implements Coverage {
  const factory _Coverage(
      {final Fixtures? fixtures,
      final bool? standings,
      final bool? players,
      final bool? topScorers,
      final bool? topAssists,
      final bool? topCards,
      final bool? injuries,
      final bool? predictions,
      final bool? odds}) = _$_Coverage;

  factory _Coverage.fromJson(Map<String, dynamic> json) = _$_Coverage.fromJson;

  @override
  Fixtures? get fixtures;
  @override
  bool? get standings;
  @override
  bool? get players;
  @override
  bool? get topScorers;
  @override
  bool? get topAssists;
  @override
  bool? get topCards;
  @override
  bool? get injuries;
  @override
  bool? get predictions;
  @override
  bool? get odds;
  @override
  @JsonKey(ignore: true)
  _$$_CoverageCopyWith<_$_Coverage> get copyWith =>
      throw _privateConstructorUsedError;
}

Fixtures _$FixturesFromJson(Map<String, dynamic> json) {
  return _Fixtures.fromJson(json);
}

/// @nodoc
mixin _$Fixtures {
  bool? get events => throw _privateConstructorUsedError;
  bool? get lineups => throw _privateConstructorUsedError;
  bool? get statisticsFixtures => throw _privateConstructorUsedError;
  bool? get statisticsPlayers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixturesCopyWith<Fixtures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixturesCopyWith<$Res> {
  factory $FixturesCopyWith(Fixtures value, $Res Function(Fixtures) then) =
      _$FixturesCopyWithImpl<$Res, Fixtures>;
  @useResult
  $Res call(
      {bool? events,
      bool? lineups,
      bool? statisticsFixtures,
      bool? statisticsPlayers});
}

/// @nodoc
class _$FixturesCopyWithImpl<$Res, $Val extends Fixtures>
    implements $FixturesCopyWith<$Res> {
  _$FixturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
    Object? lineups = freezed,
    Object? statisticsFixtures = freezed,
    Object? statisticsPlayers = freezed,
  }) {
    return _then(_value.copyWith(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as bool?,
      lineups: freezed == lineups
          ? _value.lineups
          : lineups // ignore: cast_nullable_to_non_nullable
              as bool?,
      statisticsFixtures: freezed == statisticsFixtures
          ? _value.statisticsFixtures
          : statisticsFixtures // ignore: cast_nullable_to_non_nullable
              as bool?,
      statisticsPlayers: freezed == statisticsPlayers
          ? _value.statisticsPlayers
          : statisticsPlayers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FixturesCopyWith<$Res> implements $FixturesCopyWith<$Res> {
  factory _$$_FixturesCopyWith(
          _$_Fixtures value, $Res Function(_$_Fixtures) then) =
      __$$_FixturesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? events,
      bool? lineups,
      bool? statisticsFixtures,
      bool? statisticsPlayers});
}

/// @nodoc
class __$$_FixturesCopyWithImpl<$Res>
    extends _$FixturesCopyWithImpl<$Res, _$_Fixtures>
    implements _$$_FixturesCopyWith<$Res> {
  __$$_FixturesCopyWithImpl(
      _$_Fixtures _value, $Res Function(_$_Fixtures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
    Object? lineups = freezed,
    Object? statisticsFixtures = freezed,
    Object? statisticsPlayers = freezed,
  }) {
    return _then(_$_Fixtures(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as bool?,
      lineups: freezed == lineups
          ? _value.lineups
          : lineups // ignore: cast_nullable_to_non_nullable
              as bool?,
      statisticsFixtures: freezed == statisticsFixtures
          ? _value.statisticsFixtures
          : statisticsFixtures // ignore: cast_nullable_to_non_nullable
              as bool?,
      statisticsPlayers: freezed == statisticsPlayers
          ? _value.statisticsPlayers
          : statisticsPlayers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fixtures implements _Fixtures {
  const _$_Fixtures(
      {this.events,
      this.lineups,
      this.statisticsFixtures,
      this.statisticsPlayers});

  factory _$_Fixtures.fromJson(Map<String, dynamic> json) =>
      _$$_FixturesFromJson(json);

  @override
  final bool? events;
  @override
  final bool? lineups;
  @override
  final bool? statisticsFixtures;
  @override
  final bool? statisticsPlayers;

  @override
  String toString() {
    return 'Fixtures(events: $events, lineups: $lineups, statisticsFixtures: $statisticsFixtures, statisticsPlayers: $statisticsPlayers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fixtures &&
            (identical(other.events, events) || other.events == events) &&
            (identical(other.lineups, lineups) || other.lineups == lineups) &&
            (identical(other.statisticsFixtures, statisticsFixtures) ||
                other.statisticsFixtures == statisticsFixtures) &&
            (identical(other.statisticsPlayers, statisticsPlayers) ||
                other.statisticsPlayers == statisticsPlayers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, events, lineups, statisticsFixtures, statisticsPlayers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FixturesCopyWith<_$_Fixtures> get copyWith =>
      __$$_FixturesCopyWithImpl<_$_Fixtures>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FixturesToJson(
      this,
    );
  }
}

abstract class _Fixtures implements Fixtures {
  const factory _Fixtures(
      {final bool? events,
      final bool? lineups,
      final bool? statisticsFixtures,
      final bool? statisticsPlayers}) = _$_Fixtures;

  factory _Fixtures.fromJson(Map<String, dynamic> json) = _$_Fixtures.fromJson;

  @override
  bool? get events;
  @override
  bool? get lineups;
  @override
  bool? get statisticsFixtures;
  @override
  bool? get statisticsPlayers;
  @override
  @JsonKey(ignore: true)
  _$$_FixturesCopyWith<_$_Fixtures> get copyWith =>
      throw _privateConstructorUsedError;
}
