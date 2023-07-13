import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'live_now_view_state.dart';
part 'live_now_view_cubit.freezed.dart';

class LiveNowViewCubit extends Cubit<LiveNowViewState> {
  LiveNowViewCubit(this.homeScreenRepository) : super(const LiveNowViewState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchLiveMatches(DateTime date) async {

    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    String season = DateFormat('yyyy').format(date);
    emit(state.copyWith(isLoading: true));
    try {
      final liveMatches = await homeScreenRepository.fetchLiveMatches(season, formattedDate);
      emit(state.copyWith(liveMatchModel: liveMatches, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }
}
