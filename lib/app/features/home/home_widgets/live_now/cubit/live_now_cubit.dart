import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../models/match_model/match_model.dart';
import '../../../../../../repositories/home/home_screen_repository.dart';

part 'live_now_state.dart';
part 'live_now_cubit.freezed.dart';

class LiveNowCubit extends Cubit<LiveNowState> {
  LiveNowCubit(this.homeScreenRepository) : super(const LoadingMatchesState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchLiveMatches() async {
    emit(const LoadingMatchesState());
    try {
      final liveMatches = await homeScreenRepository.fetchLiveMatches();
      if (liveMatches != null && liveMatches.isNotEmpty) {
        emit(MatchesLoadedState(liveMatches));
      } else if (liveMatches!.isEmpty) {
        emit(const MatchesLoadedState([]));
      }
    } catch (error) {
      emit(ErrorMatchesState(error.toString()));
    }
  }
}
