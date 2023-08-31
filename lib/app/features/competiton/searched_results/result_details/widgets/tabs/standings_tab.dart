import 'package:flutter/material.dart';
import 'package:score_live/app/common/extensions/context/applocalization_context.dart';
import 'package:score_live/models/standings_model/standings_model.dart';

import '../../../../../../../presentation/constants/app_colors.dart';
// import '../../../../../../../presentation/constants/app_const_variables.dart';
import '../../../../../../../presentation/constants/text_styles.dart';
import '../../../../../home/match_details/match_details_tabs/match_standings_tab/elements/league_standings_header.dart';
import '../../../../../home/match_details/match_details_tabs/match_standings_tab/elements/team_name_display.dart';
import '../../../../../home/match_details/match_details_tabs/match_standings_tab/elements/team_stats_display.dart';

class StandingsTab extends StatelessWidget {
  const StandingsTab({super.key, required this.standings, required this.resultId});

  final List<StandingsModel> standings;
  final int resultId;

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
              // TODO: uncomment line below when logic for teams is created
              // final teamId = leagueStandings[index].team?.id ?? AppConstVariables.intPlaceholder;
              return Column(
                children: [
                  Container(
                    // TODO: uncomment line below when logic for teams is created
                    // color: (resultId == teamId) ? Colors.grey[800] : Colors.transparent,
                    color: Colors.transparent,
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
