import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/score_tab_cubit.dart';
import 'score_tab_views/score_tab_error_view.dart';
import 'score_tab_views/score_tab_loaded_view.dart';
import 'score_tab_views/score_tab_loading_view.dart';

class ScoreTab extends StatelessWidget {
  const ScoreTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScoreTabCubit, ScoreTabState>(
      builder: (context, state) {
        return state.when(
            matchesLoaded: (matches) => ScoreTabLoadedView(matchesByDate: matches),
            loadingMatchesState: () => const ScoreTabLoadingView(),
            errorMatchesState: (errorMessage) => ScoreTabErrorView(errorMessage: errorMessage));
      },
    );
  }
}
