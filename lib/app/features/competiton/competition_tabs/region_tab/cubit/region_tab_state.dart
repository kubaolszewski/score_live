part of 'region_tab_cubit.dart';

@freezed
class RegionTabState with _$RegionTabState {
  const factory RegionTabState.loadedLeagues (List<LeagueModel> leagues) = LeaguesLoadedState;
  const factory RegionTabState.loadingLeagues () = LoadingLeaguesState;
  const factory RegionTabState.errorLeaguesState (String errorMessage) = ErrorLeaguesState;
}