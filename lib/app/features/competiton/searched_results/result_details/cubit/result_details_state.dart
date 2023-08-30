part of 'result_details_cubit.dart';

@freezed
class ResultDetailsState with _$ResultDetailsState {
  factory ResultDetailsState({
    @Default([]) List<MatchModel>? results,
    @Default([]) List<MatchModel>? fixtures,
    @Default([]) List<Standings> standings,
    @Default([]) List<StatisticsModel> stats,
    @Default(ResultOptions.results) ResultOptions resultOptions,
  }) = _ResultDetailsState;
  ResultDetailsState._();

  bool get isResultsTabActive => resultOptions == ResultOptions.results;
  bool get isFixturesTabActive => resultOptions == ResultOptions.fixtures;
  bool get isStandingsTabActive => resultOptions == ResultOptions.standings;
  bool get isStatsTabActive => resultOptions == ResultOptions.stats;
}
