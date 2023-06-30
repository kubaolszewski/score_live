part of 'score_tab_cubit.dart';

@freezed
class ScoreTabState with _$ScoreTabState {
  const factory ScoreTabState({
    @Default([]) List<LiveMatchResponse>? liveMatchResponse,
    @Default(false) bool isLoading,
    String? errorMessage,}) = _ScoreTabState;
}
