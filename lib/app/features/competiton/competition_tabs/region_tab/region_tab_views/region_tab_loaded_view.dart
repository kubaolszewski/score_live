import 'package:flutter/material.dart';
import 'package:score_live/app/common/widgets/search_list_tile.dart';
import 'package:score_live/app/common/extensions/context/applocalization_context.dart';
import 'package:score_live/app/common/extensions/context/dimensions_context.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class RegionTabLoadedView extends StatelessWidget {
  const RegionTabLoadedView({super.key, required this.leaguesbyRegion});

  final List<LeagueModel> leaguesbyRegion;

  @override
  Widget build(BuildContext context) {
    double height = context.mediaQueryHeight;
    double width = context.mediaQueryWidth;
    
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
                  final String leagueFlag = league.country?.flag ?? AppConstVariables.defaultLeagueLogo;
                  final String leagueRegion = league.country?.name ?? AppConstVariables.stringPlaceholder;
                  final String leagueName = league.league?.name ?? context.localizations.unknownLeague;
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
