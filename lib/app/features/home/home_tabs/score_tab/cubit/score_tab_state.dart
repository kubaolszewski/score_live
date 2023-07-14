part of 'score_tab_cubit.dart';

@freezed
class ScoreTabState with _$ScoreTabState {
  const factory ScoreTabState.matchesLoaded(List<LiveMatchModel> matches) = MatchesLoadedState;
  const factory ScoreTabState.loadingMatchesState() = LoadingMatchesState;
  const factory ScoreTabState.errorMatchesState(String errorMessage) = ErrorMatchesState;
}
