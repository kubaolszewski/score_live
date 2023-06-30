part of 'score_tab_cubit.dart';

@freezed
class ScoreTabState with _$ScoreTabState {
  const factory ScoreTabState({
    @Default([]) List<LiveMatchModel>? liveMatchModel,
    @Default(false) bool isLoading,
    String? errorMessage,}) = _ScoreTabState;
}
