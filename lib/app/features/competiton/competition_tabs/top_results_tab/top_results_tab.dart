import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/top_results_tab_views/top_results_tab_error_view.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/top_results_tab_views/top_results_tab_loaded_view.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/top_results_tab_views/top_results_tab_loading_view.dart';

class TopResultsTab extends StatelessWidget {
  const TopResultsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopResultsTabCubit, TopResultsTabState>(
      builder: (context, state) {
        return state.when(
            resultsLoaded: (results) => TopResultsTabLoadedView(results: results),
            loadingResults: () => const TopResultsTabLoadingView(),
            errorResultsState: (errorMessage) => TopResultsTabErrorView(errorMessage: errorMessage));
      },
    );
  }
}
