import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_standings_tab/elements/league_standings_header.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/models/standings_model/standings_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchStandingsTab extends StatelessWidget {
  const MatchStandingsTab({super.key, required this.match, required this.standings});

  final LiveMatchModel match;
  final List<StandingsModel> standings;
  final double space = 8.0;

  @override
  Widget build(BuildContext context) {
    final leagueStandings = standings[0].league?.standings?[0];
    return Container(
      padding: const EdgeInsets.all(12.0),
      color: AppColors.listTileGrey,
      child: Column(
        children: [
          const LeagueStandingsHeader(),
          SizedBox(height: space),
          const Divider(thickness: 0.5),
          SizedBox(height: space),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: leagueStandings?.length,
            itemBuilder: (context, index) {
              final homeTeamId = match.teams?.home?.id ?? AppConstVariables.intPlaceholder;
              final awayTeamId = match.teams?.away?.id ?? AppConstVariables.intPlaceholder;
              final teamId = leagueStandings?[index].team?.id ?? AppConstVariables.intPlaceholder;
              final teamRank = leagueStandings?[index].rank ?? AppConstVariables.intPlaceholder;
              final teamName = leagueStandings?[index].team?.name ?? AppConstVariables.stringPlaceholder;
              final gamesPlayed = leagueStandings?[index].all?.played ?? AppConstVariables.intPlaceholder;
              final wins = leagueStandings?[index].all?.win ?? AppConstVariables.intPlaceholder;
              final draws = leagueStandings?[index].all?.draw ?? AppConstVariables.intPlaceholder;
              final losses = leagueStandings?[index].all?.lose ?? AppConstVariables.intPlaceholder;
              final goalsDiff = leagueStandings?[index].goalsDiff ?? AppConstVariables.intPlaceholder;
              final points = leagueStandings?[index].points ?? AppConstVariables.intPlaceholder;
              return Column(
                children: [
                  Container(
                    color: (teamId == homeTeamId || teamId == awayTeamId) ? Colors.grey[800] : Colors.transparent,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  if (teamRank > 0 && teamRank <= 4)
                                    Container(width: 2, height: 30, color: Colors.blue)
                                  else if (teamRank > 4 && teamRank <= 6)
                                    Container(width: 2, height: 30, color: Colors.orange)
                                  else if (teamRank > 6 && teamRank == 7)
                                    Container(width: 2, height: 30, color: Colors.green),
                                  const SizedBox(width: 8),
                                  Text(
                                    teamRank.toString(),
                                    style: const CustomTextStyle(
                                        fontSize: 14, color: Colors.white, fontWeight: FontWeight.w900),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      teamName,
                                      style: const CustomTextStyle(
                                          fontSize: 14, color: Colors.white, fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  gamesPlayed.toString(),
                                  style: const CustomTextStyle(
                                      fontSize: 16, color: Colors.white, fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  wins.toString(),
                                  style: const CustomTextStyle(
                                      fontSize: 16, color: Colors.white, fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  draws.toString(),
                                  style: const CustomTextStyle(
                                      fontSize: 16, color: Colors.white, fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  losses.toString(),
                                  style: const CustomTextStyle(
                                      fontSize: 16, color: Colors.white, fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  goalsDiff.toString(),
                                  style: const CustomTextStyle(
                                      fontSize: 16, color: Colors.white, fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  points.toString(),
                                  style: const CustomTextStyle(
                                      fontSize: 16, color: Colors.red, fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                        ),
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
