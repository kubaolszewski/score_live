part of 'competition_cubit.dart';

@freezed
class CompetitionState with _$CompetitionState {
  const factory CompetitionState({
    @Default([]) List<LeagueModel> league,
  }) = _CompetitionState;

}
