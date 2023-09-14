import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../common/widgets/custom_app_bar.dart';
import '../../../common/widgets/match_details_tile/match_details_tile.dart';
import 'cubit/match_details_cubit.dart';
import 'match_details_tabs/match_h2h_tab/match_h2h_tab.dart';
import 'match_details_tabs/match_lineup_tab/match_lineup_tab.dart';
import 'match_details_tabs/match_standings_tab/match_standings_tab.dart';
import 'match_details_tabs/match_stats_tab/match_stats_tab.dart';
import 'match_details_tabs/match_summary_tab/match_summary_tab.dart';
import 'match_details_widgets/match_details_tab_bar.dart';
import 'match_details_widgets/match_details_title.dart';
import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/extensions/enums.dart';
import '../../../../models/match_model/match_model.dart';
import '../../../../presentation/constants/app_colors.dart';
import '../../../../presentation/constants/app_const_variables.dart';

class MatchDetailsView extends StatelessWidget {
  const MatchDetailsView({
    super.key,
    required this.liveMatch,
  });

  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String leagueName = liveMatch.league?.name ?? context.localizations.unknownLeague;
    final String matchDate = liveMatch.fixture?.date ?? AppConstVariables.stringPlaceholder;
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        title: MatchDetailsTitle(leagueName, matchDate),
        leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 24),
        ),
        actions: const [
          //TODO: Replace with IconButton later
          Icon(Icons.share, color: Colors.white, size: 20),
          Icon(Icons.star_rate_rounded, color: Colors.white, size: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            MatchDetailsTile(
              leagueName: leagueName,
              liveMatch: liveMatch,
            ),
            const MatchDetailsTabBar(),
            BlocBuilder<MatchDetailsCubit, MatchDetailsState>(
              builder: (context, state) {
                final matchEvents = state.matchEvents;
                final matchLineUps = state.matchLineUps;
                final matchStats = state.matchStats;
                final teamsH2h = state.teamsH2h;
                final standings = state.teamStandings;
                switch (state.detailsOptions) {
                  case DetailsOptions.summary:
                    return MatchSummaryTab(liveMatch: liveMatch, matchEvents: matchEvents);
                  case DetailsOptions.lineUp:
                    return MatchLineUpTab(liveMatch: liveMatch, lineUps: matchLineUps);
                  case DetailsOptions.stats:
                    return MatchStatsTab(matchStats: matchStats);
                  case DetailsOptions.h2H:
                    return MatchH2HTab(match: liveMatch, teamsH2h: teamsH2h);
                  case DetailsOptions.standings:
                    return MatchStandingsTab(match: liveMatch, standings: standings);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
