import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/league_model/league_model.dart';

part 'top_results_tab_state.dart';
part 'top_results_tab_cubit.freezed.dart';

class TopResultsTabCubit extends Cubit<TopResultsTabState> {
  TopResultsTabCubit() : super(const TopResultsTabState());
}
