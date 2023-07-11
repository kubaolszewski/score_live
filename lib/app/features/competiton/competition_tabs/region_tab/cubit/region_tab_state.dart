part of 'region_tab_cubit.dart';

@freezed
class RegionTabState with _$RegionTabState {
  const factory RegionTabState({
    @Default([]) List<LeagueModel> leagueModel,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _RegionTabState;
}
