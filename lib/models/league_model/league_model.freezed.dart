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
