import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_standings_tab/elements/league_standings_header.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_standings_tab/elements/team_name_display.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_standings_tab/elements/team_stats_display.dart';
import 'package:score_live/app/common/extensions/context/applocalization_context.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/models/standings_model/standings_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchStandingsTab extends StatelessWidget {
  const MatchStandingsTab({super.key, required this.match, required this.standings});

  final MatchModel match;
  final List<StandingsModel> standings;

  @override
  Widget build(BuildContext context) {
    const double space = 8.0;

    if (standings.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            context.localizations.noStandings,
            textAlign: TextAlign.center,
            style: const CustomTextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
      );
    }

    final leagueStandings = standings[0].league?.standings?[0] ?? [];

    return Container(
      padding: const EdgeInsets.all(12.0),
      color: AppColors.listTileGrey,
      child: Column(
        children: [
          const LeagueStandingsHeader(),
          const SizedBox(height: space),
          const Divider(thickness: 0.5),
          const SizedBox(height: space),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: leagueStandings.length,
            itemBuilder: (context, index) {
              final homeTeamId = match.teams?.home?.id ?? AppConstVariables.intPlaceholder;
              final awayTeamId = match.teams?.away?.id ?? AppConstVariables.intPlaceholder;
              final teamId = leagueStandings[index].team?.id ?? AppConstVariables.intPlaceholder;
              return Column(
                children: [
                  Container(
                    color: (teamId == homeTeamId || teamId == awayTeamId) ? Colors.grey[800] : Colors.transparent,
                    child: Row(
                      children: [
                        TeamNameDisplay(teamIndex: index, leagueStandings: leagueStandings),
                        TeamStatsDisplay(teamIndex: index, leagueStandings: leagueStandings),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10)
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
