part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<MatchModel>? matchModel,
    @Default([]) List<MatchEventsModel>? matchEventsModel,
    @Default(HomeOptions.score) HomeOptions homeOptions,
    DateTime? date,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _HomeState;
  HomeState._();

  bool get isUpcomingActive => homeOptions == HomeOptions.upcoming;
  bool get isScoreActive => homeOptions == HomeOptions.score;
  bool get isFavoritesActive => homeOptions == HomeOptions.favorites;
}
