part of 'top_results_tab_cubit.dart';

@freezed
class TopResultsTabState with _$TopResultsTabState {
  const factory TopResultsTabState.resultsLoaded (List<LeagueModel> leagues) = ResultsLoadedState;
  const factory TopResultsTabState.loadingResults () = LoadingResultsState;
  const factory TopResultsTabState.errorResultsState (String errorMessage) = ErrorResultsState;
}