import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/repositories/match_details_repository.dart';

part 'match_details_state.dart';
part 'match_details_cubit.freezed.dart';

class MatchDetailsCubit extends Cubit<MatchDetailsState> {
  MatchDetailsCubit(this.matchDetailsRepository) : super(const MatchDetailsState());

  final MatchDetailsRepository matchDetailsRepository;

  Future<void> fetchMatchEvents(
    String matchID,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final matchEvents = await matchDetailsRepository.fetchMatchEvents(
          matchID,
          );
      emit(state.copyWith(matchEvents: matchEvents, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  Future<void> fetchMatchGoals(
      String matchID,
      ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final matchEvents = await matchDetailsRepository.fetchMatchEvents(
          matchID,
          );
      emit(state.copyWith(matchEvents: matchEvents, isLoading: false));
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  void switchDetailsOptions(DetailsOptions chosenOption) async {
    emit(state.copyWith(detailsOptions: chosenOption));
  }
}
