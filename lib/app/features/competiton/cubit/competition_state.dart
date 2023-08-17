part of 'competition_cubit.dart';

@freezed
class CompetitionState with _$CompetitionState {
   factory CompetitionState({
    @Default([]) List<LeagueModel> leagueResults,
    @Default([]) List<TeamModel> teamResults,
    @Default(BrowsingOptions.top) BrowsingOptions browsingOptions,
    @Default(SearchTypes.team) SearchTypes searchTypes,
    String? errorMessage,
    @Default(false) bool isLoading,
  }) = _CompetitionState;
  CompetitionState._();

  bool get isTopActive => browsingOptions == BrowsingOptions.top;
  bool get isRegionActive => browsingOptions == BrowsingOptions.region;
  bool get isFavoritesActive => browsingOptions == BrowsingOptions.favorites;
}
