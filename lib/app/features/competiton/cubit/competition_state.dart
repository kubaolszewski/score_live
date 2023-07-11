part of 'competition_cubit.dart';

@freezed
class CompetitionState with _$CompetitionState {
  const factory CompetitionState({
    @Default([]) List<LeagueModel> leagueResults,
    @Default([]) List<TeamModel> teamResults,
    @Default(BrowsingOptions.top) BrowsingOptions browsingOptions,
    String? errorMessage,
    @Default(false) bool isLoading,
  }) = _CompetitionState;
}
