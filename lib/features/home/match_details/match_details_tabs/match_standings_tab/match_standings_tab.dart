import 'package:flutter/material.dart';
import '../../../../../common/extensions/match/match_properties_getter_ext.dart';
import 'elements/league_standings_header.dart';
import 'elements/team_name_display.dart';
import 'elements/team_stats_display.dart';
import '../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../data/models/match_model/match_model.dart';
import '../../../../../data/models/standings_model/standings_model.dart';
import '../../../../../common/constants/app_colors.dart';
import '../../../../../common/constants/app_const_variables.dart';
import '../../../../../common/theme/custom_text_style.dart';

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
              final homeTeamId = match.homeTeamId;
              final awayTeamId = match.awayTeamId;
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
