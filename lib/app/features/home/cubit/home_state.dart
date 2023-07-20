part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<LiveMatchModel>? liveMatchModel,
    @Default([]) List<MatchEventsModel>? matchEventsModel,
    @Default(HomeOptions.score) HomeOptions homeOptions,
    DateTime? date,
    @Default(false) bool isLoading,
    @Default(false) bool isUpcomingActive,
    @Default(true) bool isScoreActive,
    @Default(false) bool isFavoritesActive,
    String? errorMessage,
  }) = _HomeState;
}
