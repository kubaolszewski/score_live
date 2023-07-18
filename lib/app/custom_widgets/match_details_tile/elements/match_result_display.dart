import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchResultDisplay extends StatelessWidget {
  const MatchResultDisplay({super.key, required this.liveMatch});

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    const String stringPlaceholder = '';
    final String homeTeamLogo =
        liveMatch.teams?.home?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String awayTeamLogo =
        liveMatch.teams?.away?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String homeTeamName = liveMatch.teams?.home?.name ?? context.localizations.unknownHomeTeam;
    final String awayTeamName = liveMatch.teams?.away?.name ?? context.localizations.unknownAwayTeam;
    final String matchStatusShort = liveMatch.fixture?.status?.short ?? stringPlaceholder;
    final String matchStatusLong = liveMatch.fixture?.status?.long! ?? stringPlaceholder;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox.square(
            dimension: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: NetworkImage(homeTeamLogo, scale: 3),
                ),
                Text(homeTeamName, textAlign: TextAlign.center, style: CommonTextStyles.basicWhiteTextWithWeight),
              ],
            ),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              matchStatusShort == 'NS' || matchStatusShort == 'TBD'
                  ? Text(
                      matchStatusLong,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Text(
                      '${liveMatch.goals!.home} - '
                      '${liveMatch.goals!.away}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ],
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          flex: 1,
          child: SizedBox.square(
            dimension: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: NetworkImage(
                    awayTeamLogo,
                    scale: 3,
                  ),
                ),
                Text(awayTeamName, textAlign: TextAlign.center, style: CommonTextStyles.basicWhiteTextWithWeight),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
