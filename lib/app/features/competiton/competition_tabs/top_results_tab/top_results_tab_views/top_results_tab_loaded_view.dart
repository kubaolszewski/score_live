import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/search_list_tile.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/league_model/league_model.dart';

class TopResultsTabLoadedView extends StatelessWidget {
  const TopResultsTabLoadedView({super.key, required this.results});

  final List<LeagueModel> results;

  @override
  Widget build(BuildContext context) {
    const String stringPlaceholder = '';
    double height = MediaQuery.sizeOf(context).height;
    double width = double.infinity;
    if (results.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            context.localizations.dataErrorInfo,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      );
    }

    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            context.localizations.topHeader,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
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
          ),
        ],
      ),
    );
  }
}
