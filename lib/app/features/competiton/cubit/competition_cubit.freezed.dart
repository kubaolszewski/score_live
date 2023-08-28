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
  List<TeamModel> get teamResults => throw _privateConstructorUsedError;
  List<LeagueModel> get leagueResults => throw _privateConstructorUsedError;
  List<MatchModel>? get teamDetails => throw _privateConstructorUsedError;
  List<MatchModel>? get leagueDetails => throw _privateConstructorUsedError;
  BrowsingOptions get browsingOptions => throw _privateConstructorUsedError;
  SearchTypes get searchTypes => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

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
  $Res call(
      {List<TeamModel> teamResults,
      List<LeagueModel> leagueResults,
      List<MatchModel>? teamDetails,
      List<MatchModel>? leagueDetails,
      BrowsingOptions browsingOptions,
      SearchTypes searchTypes,
      String? errorMessage,
      bool isLoading});
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
    Object? teamResults = null,
    Object? leagueResults = null,
    Object? teamDetails = freezed,
    Object? leagueDetails = freezed,
    Object? browsingOptions = null,
    Object? searchTypes = null,
    Object? errorMessage = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      teamResults: null == teamResults
          ? _value.teamResults
          : teamResults // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
      leagueResults: null == leagueResults
          ? _value.leagueResults
          : leagueResults // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
      teamDetails: freezed == teamDetails
          ? _value.teamDetails
          : teamDetails // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
      leagueDetails: freezed == leagueDetails
          ? _value.leagueDetails
          : leagueDetails // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
      browsingOptions: null == browsingOptions
          ? _value.browsingOptions
          : browsingOptions // ignore: cast_nullable_to_non_nullable
              as BrowsingOptions,
      searchTypes: null == searchTypes
          ? _value.searchTypes
          : searchTypes // ignore: cast_nullable_to_non_nullable
              as SearchTypes,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call(
      {List<TeamModel> teamResults,
      List<LeagueModel> leagueResults,
      List<MatchModel>? teamDetails,
      List<MatchModel>? leagueDetails,
      BrowsingOptions browsingOptions,
      SearchTypes searchTypes,
      String? errorMessage,
      bool isLoading});
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
    Object? teamResults = null,
    Object? leagueResults = null,
    Object? teamDetails = freezed,
    Object? leagueDetails = freezed,
    Object? browsingOptions = null,
    Object? searchTypes = null,
    Object? errorMessage = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_CompetitionState(
      teamResults: null == teamResults
          ? _value._teamResults
          : teamResults // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
      leagueResults: null == leagueResults
          ? _value._leagueResults
          : leagueResults // ignore: cast_nullable_to_non_nullable
              as List<LeagueModel>,
      teamDetails: freezed == teamDetails
          ? _value._teamDetails
          : teamDetails // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
      leagueDetails: freezed == leagueDetails
          ? _value._leagueDetails
          : leagueDetails // ignore: cast_nullable_to_non_nullable
              as List<MatchModel>?,
      browsingOptions: null == browsingOptions
          ? _value.browsingOptions
          : browsingOptions // ignore: cast_nullable_to_non_nullable
              as BrowsingOptions,
      searchTypes: null == searchTypes
          ? _value.searchTypes
          : searchTypes // ignore: cast_nullable_to_non_nullable
              as SearchTypes,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CompetitionState extends _CompetitionState {
  _$_CompetitionState(
      {final List<TeamModel> teamResults = const [],
      final List<LeagueModel> leagueResults = const [],
      final List<MatchModel>? teamDetails = const [],
      final List<MatchModel>? leagueDetails = const [],
      this.browsingOptions = BrowsingOptions.top,
      this.searchTypes = SearchTypes.team,
      this.errorMessage,
      this.isLoading = false})
      : _teamResults = teamResults,
        _leagueResults = leagueResults,
        _teamDetails = teamDetails,
        _leagueDetails = leagueDetails,
        super._();

  final List<TeamModel> _teamResults;
  @override
  @JsonKey()
  List<TeamModel> get teamResults {
    if (_teamResults is EqualUnmodifiableListView) return _teamResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamResults);
  }

  final List<LeagueModel> _leagueResults;
  @override
  @JsonKey()
  List<LeagueModel> get leagueResults {
    if (_leagueResults is EqualUnmodifiableListView) return _leagueResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leagueResults);
  }

  final List<MatchModel>? _teamDetails;
  @override
  @JsonKey()
  List<MatchModel>? get teamDetails {
    final value = _teamDetails;
    if (value == null) return null;
    if (_teamDetails is EqualUnmodifiableListView) return _teamDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MatchModel>? _leagueDetails;
  @override
  @JsonKey()
  List<MatchModel>? get leagueDetails {
    final value = _leagueDetails;
    if (value == null) return null;
    if (_leagueDetails is EqualUnmodifiableListView) return _leagueDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final BrowsingOptions browsingOptions;
  @override
  @JsonKey()
  final SearchTypes searchTypes;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CompetitionState(teamResults: $teamResults, leagueResults: $leagueResults, teamDetails: $teamDetails, leagueDetails: $leagueDetails, browsingOptions: $browsingOptions, searchTypes: $searchTypes, errorMessage: $errorMessage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompetitionState &&
            const DeepCollectionEquality()
                .equals(other._teamResults, _teamResults) &&
            const DeepCollectionEquality()
                .equals(other._leagueResults, _leagueResults) &&
            const DeepCollectionEquality()
                .equals(other._teamDetails, _teamDetails) &&
            const DeepCollectionEquality()
                .equals(other._leagueDetails, _leagueDetails) &&
            (identical(other.browsingOptions, browsingOptions) ||
                other.browsingOptions == browsingOptions) &&
            (identical(other.searchTypes, searchTypes) ||
                other.searchTypes == searchTypes) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_teamResults),
      const DeepCollectionEquality().hash(_leagueResults),
      const DeepCollectionEquality().hash(_teamDetails),
      const DeepCollectionEquality().hash(_leagueDetails),
      browsingOptions,
      searchTypes,
      errorMessage,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompetitionStateCopyWith<_$_CompetitionState> get copyWith =>
      __$$_CompetitionStateCopyWithImpl<_$_CompetitionState>(this, _$identity);
}

abstract class _CompetitionState extends CompetitionState {
  factory _CompetitionState(
      {final List<TeamModel> teamResults,
      final List<LeagueModel> leagueResults,
      final List<MatchModel>? teamDetails,
      final List<MatchModel>? leagueDetails,
      final BrowsingOptions browsingOptions,
      final SearchTypes searchTypes,
      final String? errorMessage,
      final bool isLoading}) = _$_CompetitionState;
  _CompetitionState._() : super._();

  @override
  List<TeamModel> get teamResults;
  @override
  List<LeagueModel> get leagueResults;
  @override
  List<MatchModel>? get teamDetails;
  @override
  List<MatchModel>? get leagueDetails;
  @override
  BrowsingOptions get browsingOptions;
  @override
  SearchTypes get searchTypes;
  @override
  String? get errorMessage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CompetitionStateCopyWith<_$_CompetitionState> get copyWith =>
      throw _privateConstructorUsedError;
}
