import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/league_badge.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchLeagueAndTimerBadge extends StatelessWidget {
  const MatchLeagueAndTimerBadge({super.key, required this.liveMatch});

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String flag = liveMatch.league?.flag ?? AppConstVariables.defaultLeagueLogo;
    final String leagueName = liveMatch.league?.name ?? context.localizations.unknownLeague;
    final int matchTimeElapsed = liveMatch.fixture?.status?.elapsed ?? AppConstVariables.intPlaceholder;
    final String matchStatusShort = liveMatch.fixture?.status?.short ?? AppConstVariables.stringPlaceholder;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LeagueBadge(flag: flag, leagueName: leagueName),
        matchStatusShort != AppConstVariables.fullTime
            ? Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: matchStatusShort == AppConstVariables.matchTimeToBeDefined ||
                          matchStatusShort == AppConstVariables.matchNotStarted ||
                          matchStatusShort == AppConstVariables.matchSuspended
                      ? AppColors.liveTimerBackgroundGreen
                      : Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: matchStatusShort == AppConstVariables.matchTimeToBeDefined ||
                              matchStatusShort == AppConstVariables.matchNotStarted ||
                              matchStatusShort == AppConstVariables.matchSuspended
                          ? Colors.red
                          : Colors.green,
                    ),
                    Text(
                      matchTimeElapsed.toString(),
                      style: TextStyle(
                          color: matchStatusShort == AppConstVariables.matchTimeToBeDefined ||
                                  matchStatusShort == AppConstVariables.matchNotStarted ||
                                  matchStatusShort == AppConstVariables.matchSuspended
                              ? Colors.black
                              : Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            : Text(
                context.localizations.fullTime,
                style: const CustomTextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
      ],
    );
  }
}
