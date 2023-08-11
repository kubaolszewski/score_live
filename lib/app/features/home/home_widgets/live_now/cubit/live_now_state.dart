part of 'live_now_cubit.dart';

@freezed
class LiveNowState with _$LiveNowState {
  const factory LiveNowState.matchesLoaded(List<MatchModel> matches) = MatchesLoadedState;
  const factory LiveNowState.loadingMatchesState() = LoadingMatchesState;
  const factory LiveNowState.errorMatchesState(String errorMessage) = ErrorMatchesState;
}
