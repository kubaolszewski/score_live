import 'package:flutter/material.dart';
import '../../../../../../../models/standings_model/standings/standings.dart';
import '../../../../../../../presentation/constants/app_const_variables.dart';
import '../../../../../../../presentation/constants/text_styles.dart';

class TeamStatsDisplay extends StatelessWidget {
  const TeamStatsDisplay({
    super.key,
    required this.teamIndex,
    this.leagueStandings,
  });

  final int teamIndex;
  final List<Standings>? leagueStandings;

  @override
  Widget build(BuildContext context) {
    final gamesPlayed = leagueStandings?[teamIndex].all?.played.toString() ?? AppConstVariables.stringPlaceholder;
    final wins = leagueStandings?[teamIndex].all?.win.toString() ?? AppConstVariables.stringPlaceholder;
    final draws = leagueStandings?[teamIndex].all?.draw.toString() ?? AppConstVariables.stringPlaceholder;
    final losses = leagueStandings?[teamIndex].all?.lose.toString() ?? AppConstVariables.stringPlaceholder;
    final goalsDiff = leagueStandings?[teamIndex].goalsDiff.toString() ?? AppConstVariables.stringPlaceholder;
    final points = leagueStandings?[teamIndex].points.toString() ?? AppConstVariables.stringPlaceholder;
    final statsList = [gamesPlayed, wins, draws, losses, goalsDiff, points];
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int amountOfTextInputs = 0; amountOfTextInputs <= 5; amountOfTextInputs++) ...[
            StatTextWidget(text: statsList[amountOfTextInputs], index: amountOfTextInputs),
            const SizedBox(width: 12),
          ],
        ],
      ),
    );
  }
}

class StatTextWidget extends StatelessWidget {
  const StatTextWidget({super.key, required this.text, required this.index});

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: CustomTextStyle(fontSize: 14, color: index != 5 ? Colors.white : Colors.red, fontWeight: FontWeight.w900),
    );
  }
}
