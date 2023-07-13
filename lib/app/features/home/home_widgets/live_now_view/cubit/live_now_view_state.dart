part of 'live_now_view_cubit.dart';

@freezed
class LiveNowViewState with _$LiveNowViewState {
  const factory LiveNowViewState() = _LiveNowViewState;
  const factory LiveNowViewState.matchesLoaded(List<LiveMatchModel> matches) = MatchesLoadedState;
  const factory LiveNowViewState.loadingMatchesState() = LoadingMatchesState;
  const factory LiveNowViewState.errorMatchesState(String errorMessage) = ErrorMatchesState;
}
