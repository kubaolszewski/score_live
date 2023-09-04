part of 'result_details_cubit.dart';

@freezed
class ResultDetailsState with _$ResultDetailsState {
  factory ResultDetailsState({
    @Default([]) List<MatchModel>? results,
    @Default([]) List<MatchModel>? fixtures,
    @Default([]) List<StandingsModel> standings,
    @Default([]) List<TopScorersModel> topScorers,
    @Default(ResultOptions.results) ResultOptions resultOptions,
    @Default(StatsSwitch.goals) StatsSwitch statsSwitch,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _ResultDetailsState;
  ResultDetailsState._();

  bool get isResultsTabActive => resultOptions == ResultOptions.results;
  bool get isFixturesTabActive => resultOptions == ResultOptions.fixtures;
  bool get isStandingsTabActive => resultOptions == ResultOptions.standings;
  bool get isStatsTabActive => resultOptions == ResultOptions.stats;
}
