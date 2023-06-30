import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/live_match_response.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'live_now_view_state.dart';
part 'live_now_view_cubit.freezed.dart';

class LiveNowViewCubit extends Cubit<LiveNowViewState> {
  LiveNowViewCubit(this.homeScreenRepository) : super(const LiveNowViewState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchLiveMatches() async {
    emit(state.copyWith(isLoading: true));
    try {
      final liveMatches = await homeScreenRepository.fetchLiveMatches();
      emit(state.copyWith(liveMatchResponse: liveMatches, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
