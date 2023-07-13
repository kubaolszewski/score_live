part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<LiveMatchModel>? liveMatchModel,
    @Default(false) bool isLoading,
    DateTime? date,
    @Default(HomeOptions.score) HomeOptions homeOptions,
    @Default(DetailsOptions.summary) DetailsOptions detailsOptions,
    String? errorMessage,
  }) = _HomeState;
}
