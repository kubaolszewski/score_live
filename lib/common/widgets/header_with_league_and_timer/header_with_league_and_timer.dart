import 'package:flutter/material.dart';
import '../../extensions/match/match_properties_getter_ext.dart';
import '../league_badge.dart';
import 'elements/finished_match_info.dart';
import 'elements/match_in_progress_timer.dart';
import '../../extensions/context/applocalization_context.dart';
import '../../../data/models/match_model/match_model.dart';
import '../../constants/app_const_variables.dart';

class HeaderWithLeagueAndTimer extends StatelessWidget {
  const HeaderWithLeagueAndTimer({super.key, required this.match});

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    final String leagueName = match.league?.name ?? context.localizations.unknownLeague;
    final String flag = match.leagueFlag;
    final int matchTimeElapsed = match.matchTimeElapsed;
    final String matchStatusShort = match.matchStatusShort;
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
