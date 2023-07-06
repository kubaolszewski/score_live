import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/league_model/league_model.dart';

part 'competition_state.dart';
part 'competition_cubit.freezed.dart';

class CompetitionCubit extends Cubit<CompetitionState> {
  CompetitionCubit() : super(const CompetitionState());

  void switchBrowsingOptions(BrowsingOptions chosenOption) async {
    emit(state.copyWith(browsingOptions: chosenOption));
  }
}
