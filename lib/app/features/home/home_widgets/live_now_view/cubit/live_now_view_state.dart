part of 'live_now_view_cubit.dart';

@freezed
class LiveNowViewState with _$LiveNowViewState {
  const factory LiveNowViewState({
    @Default([]) List<LiveMatchModel>? liveMatchModel,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _LiveNowViewState;
}
