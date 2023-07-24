part of 'upcoming_tab_cubit.dart';

@freezed
class UpcomingTabState with _$UpcomingTabState {
  const factory UpcomingTabState.matchesLoaded(List<LiveMatchModel> matches) = MatchesLoadedState;
  const factory UpcomingTabState.LoadingMatches() = LoadingMatchesState;
  const factory UpcomingTabState.errorMatchesState(String errorMessage) = ErrorMatchesState;
}
