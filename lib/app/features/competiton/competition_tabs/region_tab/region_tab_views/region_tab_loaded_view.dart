import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/search_list_tile.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/league_model/league_model.dart';

class RegionTabLoadedView extends StatelessWidget {
  const RegionTabLoadedView({super.key, required this.leaguesbyRegion});

  final List<LeagueModel> leaguesbyRegion;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    
    if (leaguesbyRegion.isEmpty) {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: width,
              height: height,
              child: ListView.builder(
                itemCount: leaguesbyRegion.length,
                itemBuilder: (context, index) {
                  final league = leaguesbyRegion[index];
                  final String leagueFlag = league.country?.flag ?? '';
                  final String leagueRegion = league.country?.name ?? '';
                  final String leagueName = league.league?.name ?? '';
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
