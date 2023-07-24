part of 'match_details_cubit.dart';

@freezed
class MatchDetailsState with _$MatchDetailsState {
  factory MatchDetailsState({
    @Default([]) List<MatchEventsModel> matchEvents,
    @Default(DetailsOptions.summary) DetailsOptions detailsOptions,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _MatchDetailsState;
  MatchDetailsState._();

  bool get isSummaryActive => detailsOptions == DetailsOptions.summary;
  bool get isLineUpActive => detailsOptions == DetailsOptions.lineUp;
  bool get isStatsActive => detailsOptions == DetailsOptions.stats;
  bool get isH2HActive => detailsOptions == DetailsOptions.h2H;
  bool get isStandingActive => detailsOptions == DetailsOptions.standings;
}
