part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default('') String date,
    @Default(HomeOptions.score) HomeOptions homeOptions,
    @Default(DetailsOptions.summary) DetailsOptions detailsOptions,
  }) = _HomeState;
}
