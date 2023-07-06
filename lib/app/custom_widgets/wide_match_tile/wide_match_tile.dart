import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/elements/wide_match_tile_elapsed_time.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/elements/wide_match_tile_teams_display.dart';
import 'package:score_live/app/features/home/home_module.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class WideMatchListTile extends StatelessWidget {
  const WideMatchListTile({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String homeTeamLogo =
        liveMatch.teams?.home?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String awayTeamLogo =
        liveMatch.teams?.away?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String homeTeamName = liveMatch.teams?.home?.name ?? 'Unknown home team';
    final String awayTeamName = liveMatch.teams?.away?.name ?? 'Unknown away team';
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Modular.to.pushNamed(HomePath.matchDetailsPath, arguments: liveMatch);
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.listTileGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              WideMatchTileElapsedTime(liveMatch: liveMatch),
              WideMatchTileTeamsDisplay(
                homeTeamLogo: homeTeamLogo,
                homeTeamName: homeTeamName,
                awayTeamLogo: awayTeamLogo,
                awayTeamName: awayTeamName,
              ),
              Expanded(
                flex: 0.5.toInt(),
                child: Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            liveMatch.goals!.home.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Text(
                            liveMatch.goals!.away.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
