import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/league_list_tile.dart';
import 'package:score_live/models/league_model/league_model.dart';

class SearchedCompetitionView extends StatelessWidget {
  const SearchedCompetitionView({
    super.key,
    required this.width,
    required this.height,
    required this.leagues,
  });

  final double width;
  final double height;
  final List<LeagueModel> leagues;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height,
        child: ListView.builder(
          itemCount: leagues.length,
          itemBuilder: (context, index) {
            final league = leagues[index];
            final String leagueFlag = league.country?.flag ?? '';
            final String leagueRegion = league.country?.name ?? '';
            final String leagueName = league.league?.name ?? '';
            return LeagueListTile(leagueFlag: leagueFlag, leagueRegion: leagueRegion, leagueName: leagueName);
          },
        ),
      ),
    );
  }
}
