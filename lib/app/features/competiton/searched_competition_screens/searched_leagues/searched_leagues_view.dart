import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/search_list_tile.dart';
import 'package:score_live/models/league_model/league_model.dart';

class SearchedLeaguesView extends StatelessWidget {
  const SearchedLeaguesView({super.key, required this.results});

  final List<LeagueModel> results;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = double.infinity;
    const String stringPlaceholder = '';

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height,
        child: ListView.builder(
          itemCount: results.length,
          itemBuilder: (context, index) {
            final league = results[index];
            final String leagueFlag = league.country?.flag ?? stringPlaceholder;
            final String leagueRegion = league.country?.name ?? stringPlaceholder;
            final String leagueName = league.league?.name ?? stringPlaceholder;
            return SearchListTile(flag: leagueFlag, region: leagueRegion, name: leagueName);
          },
        ),
      ),
    );
  }
}
