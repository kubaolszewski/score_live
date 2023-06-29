part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<LiveMatchResponse>? liveMatchResponse,
    @Default(HomeOptions.score) HomeOptions homeOptions,
    @Default(DetailsOptions.summary) DetailsOptions detailsOptions,
    String? errorMessage,
  }) = _HomeState;
}
