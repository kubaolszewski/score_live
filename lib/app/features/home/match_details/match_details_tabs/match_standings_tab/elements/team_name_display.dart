import 'package:flutter/material.dart';
import '../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../../models/standings_model/standings/standings.dart';
import '../../../../../../../presentation/constants/app_const_variables.dart';
import '../../../../../../../presentation/constants/text_styles.dart';

class TeamNameDisplay extends StatelessWidget {
  const TeamNameDisplay({
    super.key,
    required this.teamIndex,
    this.leagueStandings,
  });

  final int teamIndex;
  final List<Standings>? leagueStandings;

  @override
  Widget build(BuildContext context) {
    final teamRank = leagueStandings?[teamIndex].rank ?? AppConstVariables.intPlaceholder;
    final teamName = leagueStandings?[teamIndex].team?.name ?? context.localizations.unknownTeam;
    return Expanded(
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
                style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w900),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  teamName,
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
