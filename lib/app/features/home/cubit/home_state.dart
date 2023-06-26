part of 'home_cubit.dart';

@immutable
class HomeState {
  const HomeState({
    this.homeOptions = HomeOptions.score,
    this.detailsOptions = DetailsOptions.summary,
  });

  final HomeOptions homeOptions;
  final DetailsOptions detailsOptions;
}