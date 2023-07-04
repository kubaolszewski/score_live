part of 'match_details_cubit.dart';

@freezed
class MatchDetailsState with _$MatchDetailsState {
  const factory MatchDetailsState({
    @Default([]) List<MatchEventsModel> matchEvents,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _MatchDetailsState;
}
