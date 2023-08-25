part of 'result_details_cubit.dart';

@freezed
class ResultDetailsState with _$ResultDetailsState {
  factory ResultDetailsState({
    @Default([]) List<MatchModel> teamDetails,
    @Default([]) List<MatchModel> leagueDetails,
    @Default(true) bool isLoading,
    String? errorMessage,
  }) = _ResultDetailsState;
}
