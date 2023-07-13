import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchSummaryView extends StatelessWidget {
  const MatchSummaryView({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.listTileGrey),
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        context.localizations.halfTime,
                        style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        liveMatch.score!.halftime!.home == null ||
                                liveMatch.score!.fulltime!.home == null ||
                                liveMatch.score!.halftime!.away == null ||
                                liveMatch.score!.fulltime!.away == null
                            ? Text(
                                liveMatch.fixture!.status!.long!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.white, fontSize: 16),
                              )
                            : Text(
                                '${liveMatch.teams!.home!.name} ${liveMatch.score!.halftime!.home} - '
                                '${liveMatch.score!.halftime!.away} ${liveMatch.teams!.away!.name}',
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.white, fontSize: 16),
                              )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.listTileGrey),
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.localizations.fullTime,
                      style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    liveMatch.score!.halftime!.home == null ||
                            liveMatch.score!.fulltime!.home == null ||
                            liveMatch.score!.halftime!.away == null ||
                            liveMatch.score!.fulltime!.away == null
                        ? Text(
                            liveMatch.fixture!.status!.long!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white, fontSize: 16),
                          )
                        : Text(
                            '${liveMatch.teams!.home!.name} ${liveMatch.score!.fulltime!.home} - '
                            '${liveMatch.score!.fulltime!.away} ${liveMatch.teams!.away!.name}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white, fontSize: 16),
                          )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
