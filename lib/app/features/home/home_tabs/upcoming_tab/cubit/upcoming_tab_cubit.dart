import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'upcoming_tab_state.dart';
part 'upcoming_tab_cubit.freezed.dart';

class UpcomingTabCubit extends Cubit<UpcomingTabState> {
  UpcomingTabCubit(this.homeScreenRepository) : super(const LoadingMatchesState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchUpcomingMatches(DateTime date) async {
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    emit(const LoadingMatchesState());
    if (date.isAtSameMomentAs(DateTime.now()) || date.isAfter(DateTime.now())) {
      try {
        final upcomingMatches =
            await homeScreenRepository.fetchUpcomingMatches(AppConstVariables.matchNotStarted, formattedDate);
        if (upcomingMatches!.isNotEmpty) {
          emit(MatchesLoadedState(upcomingMatches.take(20).toList()));
        }
      } catch (error) {
        emit(ErrorMatchesState(error.toString()));
      }
    } else {
      emit(const ErrorMatchesState('No results.'));
    }
  }
}
