import 'package:flutter/material.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class LiveMatchTileTeamsDisplay extends StatelessWidget {
  const LiveMatchTileTeamsDisplay({
    super.key,
    required this.liveMatch,
    required this.homeTeamLogo,
    required this.awayTeamLogo,
    required this.homeTeamName,
    required this.awayTeamName,
  });

  final LiveMatchModel liveMatch;
  final String homeTeamLogo;
  final String awayTeamLogo;
  final String homeTeamName;
  final String awayTeamName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SizedBox(
        width: 370,
        child: Row(
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
                    Text(homeTeamName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  liveMatch.fixture!.status!.short == 'NS' || liveMatch.fixture!.status!.short == 'TBD'
                      ? Text(
                          liveMatch.fixture!.status!.long!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : Text(
                          '${liveMatch.goals!.home} -'
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
            Expanded(
              flex: 1,
              child: SizedBox.square(
                dimension: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: NetworkImage(awayTeamLogo, scale: 3),
                    ),
                    Text(awayTeamName, textAlign: TextAlign.center, style: CommonTextStyles.basicWhiteText),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
