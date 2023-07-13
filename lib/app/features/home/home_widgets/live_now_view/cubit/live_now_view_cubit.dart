import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'live_now_view_state.dart';
part 'live_now_view_cubit.freezed.dart';

class LiveNowViewCubit extends Cubit<LiveNowViewState> {
  LiveNowViewCubit(this.homeScreenRepository) : super(const LiveNowViewState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchLiveMatches() async {
    emit(const LoadingMatchesState());
    try {
      final liveMatches = await homeScreenRepository.fetchLiveMatches();
      emit(MatchesLoadedState(liveMatches!));
    } catch (error) {
      emit(ErrorMatchesState(error.toString()));
    }
  }
}
