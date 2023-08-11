import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/league_badge.dart';
import 'package:score_live/app/custom_widgets/header_with_league_and_timer/elements/finished_match_info.dart';
import 'package:score_live/app/custom_widgets/header_with_league_and_timer/elements/match_in_progress_timer.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class HeaderWithLeagueAndTimer extends StatelessWidget {
  const HeaderWithLeagueAndTimer({super.key, required this.liveMatch});

  final MatchModel liveMatch;

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
            ? MatchInProgressTimer(matchStatusShort: matchStatusShort, matchTimeElapsed: matchTimeElapsed)
            : const FinishedMatchInfo(),
      ],
    );
  }
}
