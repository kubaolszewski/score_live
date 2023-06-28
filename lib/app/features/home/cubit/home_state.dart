part of 'home_cubit.dart';

@immutable
class HomeState {
  const HomeState({
    this.liveMatchTileModel = const [],
    this.homeOptions = HomeOptions.score,
    this.detailsOptions = DetailsOptions.summary,
  });

  final List<LiveMatchTileModel> liveMatchTileModel;
  final HomeOptions homeOptions;
  final DetailsOptions detailsOptions;
}