part of 'top_results_tab_cubit.dart';

@freezed
class TopResultsTabState with _$TopResultsTabState {
  const factory TopResultsTabState({
    @Default([]) List<LeagueModel> leagueModel,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _TopResultsTabState;
}
