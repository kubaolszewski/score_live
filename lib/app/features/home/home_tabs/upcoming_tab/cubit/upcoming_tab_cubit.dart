import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:score_live/core/date_formatter_ext.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

part 'upcoming_tab_state.dart';
part 'upcoming_tab_cubit.freezed.dart';

class UpcomingTabCubit extends Cubit<UpcomingTabState> {
  UpcomingTabCubit(this.homeScreenRepository) : super(const LoadingMatchesState());

  final HomeScreenRepository homeScreenRepository;

  Future<void> fetchUpcomingMatches(DateTime date) async {
    final formattedStringDate = DateFormat(AppConstVariables.dateYyyyMmDdDashFormat).format(date);
    final formattedDate = DateFormat(AppConstVariables.dateYyyyMmDdDashFormat).parse(formattedStringDate);
    final formattedActualDate = DateTime.now().formatDateToDateTime();
    try {
      if (formattedDate.isAtSameMomentAs(formattedActualDate) || formattedDate.isAfter(formattedActualDate)) {
        emit(const LoadingMatchesState());
        final upcomingMatches =
            await homeScreenRepository.fetchUpcomingMatches(AppConstVariables.matchNotStarted, formattedStringDate);
        if (upcomingMatches != null) {
          emit(MatchesLoadedState(upcomingMatches.take(20).toList()));
        }
      } else {
        emit(const MatchesLoadedState([]));
      }
    } catch (error) {
      emit(ErrorMatchesState(error.toString()));
    }
  }
}
