import 'package:flutter/material.dart';
import '../../../../../../common/widgets/search_list_tile.dart';
import '../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../common/extensions/context/dimensions_context.dart';
import '../../../../../common/extensions/league/league_getter_ext.dart';
import '../../../../../data/models/league_model/league_model.dart';

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
                  final leagueName = league.league?.name ?? context.localizations.unknownLeague;
                  final leagueId = league.leagueId;
                  final leagueFlag = league.leagueFlag;
                  final leagueRegion = league.leagueRegion;
                  return SearchListTile(resultId: leagueId, flag: leagueFlag, region: leagueRegion, name: leagueName);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
