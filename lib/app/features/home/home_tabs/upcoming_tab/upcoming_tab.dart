import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/home/home_tabs/upcoming_tab/cubit/upcoming_tab_cubit.dart';
import 'package:score_live/app/features/home/home_tabs/upcoming_tab/upcoming_tab_views/upcoming_tab_error_view.dart';
import 'package:score_live/app/features/home/home_tabs/upcoming_tab/upcoming_tab_views/upcoming_tab_loaded_view.dart';
import 'package:score_live/app/features/home/home_tabs/upcoming_tab/upcoming_tab_views/upcoming_tab_loading_view.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingTabCubit, UpcomingTabState>(
      builder: (context, state) {
        return state.when(
            matchesLoaded: (matches) => UpcomingTabLoadedView(upcomingMatches: matches),
            LoadingMatches: () => const UpcomingTabLoadingView(),
            errorMatchesState: (errorMessage) => UpcomingTabErrorView(errorMessage: errorMessage));
      },
    );
  }
}
