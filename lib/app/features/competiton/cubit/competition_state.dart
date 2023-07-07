part of 'competition_cubit.dart';

@freezed
class CompetitionState with _$CompetitionState {
  const factory CompetitionState({
    @Default([]) List<LeagueModel> leagues,
    @Default(BrowsingOptions.top) BrowsingOptions browsingOptions,
    String? errorMessage,
    @Default(false) bool isLoading,
  }) = _CompetitionState;

}
