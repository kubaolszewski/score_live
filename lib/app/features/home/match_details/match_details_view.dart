import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/custom_widgets/match_details_tile/match_details_tile.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_h2h_tab/match_h2h_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_lineup_tab/match_lineup_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_standings_tab/match_standings_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_stats_tab/match_stats_tab.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_summary_tab/match_summary_tab.dart';
import 'package:score_live/app/features/home/match_details/match_details_widgets/match_details_tab_bar.dart';
import 'package:score_live/app/features/home/match_details/match_details_widgets/match_details_title.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchDetailsView extends StatelessWidget {
  const MatchDetailsView({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String leagueName = liveMatch.league?.name ?? 'Unknown league';

    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        title: MatchDetailsTitle(leagueName),
        leading: IconButton(
            onPressed: () {
              Modular.to.pop();
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: Colors.white)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.star_rate_rounded, color: Colors.white)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            MatchDetailsTile(
              leagueName: leagueName,
              liveMatch: liveMatch,
            ),
            const MatchDetailsTabBar(),
            BlocBuilder<MatchDetailsCubit, MatchDetailsState>(
              builder: (context, state) {
                final matchEvents = state.matchEvents;
                switch (state.detailsOptions) {
                  case DetailsOptions.summary:
                    return MatchSummaryTab(
                      liveMatch: liveMatch,
                      matchEvents: matchEvents,
                    );
                  case DetailsOptions.lineUp:
                    return const MatchLineUpTab();
                  case DetailsOptions.stats:
                    return const MatchStatsTab();
                  case DetailsOptions.h2H:
                    return const MatchH2HTab();
                  case DetailsOptions.standings:
                    return const MatchStandingsTab();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
