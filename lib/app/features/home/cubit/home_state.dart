part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<LiveMatchModel>? liveMatchModel,
    @Default([]) List<MatchEventsModel>? matchEventsModel,
    DateTime? date,
    @Default(HomeOptions.score) HomeOptions homeOptions,
    @Default(DetailsOptions.summary) DetailsOptions detailsOptions,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _HomeState;
}
