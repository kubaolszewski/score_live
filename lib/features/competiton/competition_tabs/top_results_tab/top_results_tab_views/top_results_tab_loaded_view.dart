import 'package:flutter/material.dart';
import '../../../../../../common/widgets/search_list_tile.dart';
import '../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../common/extensions/context/dimensions_context.dart';
import '../../../../../common/extensions/league/league_getter_ext.dart';
import '../../../../../data/models/league_model/league_model.dart';
import '../../../../../common/constants/app_colors.dart';

class TopResultsTabLoadedView extends StatelessWidget {
  const TopResultsTabLoadedView({super.key, required this.results});

  final List<LeagueModel> results;

  @override
  Widget build(BuildContext context) {
    double height = context.mediaQueryHeight;
    double width = context.mediaQueryWidth;
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            context.localizations.topHeader,
            style: const TextStyle(
              color: AppColors.inactiveTextGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: width,
            height: height,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: results.length,
              itemBuilder: (context, index) {
                final league = results[index];
                final leagueName = league.league?.name ?? context.localizations.unknownLeague;
                final leagueId = league.leagueId;
                final leagueFlag = league.leagueFlag;
                final leagueRegion = league.leagueRegion;
                return SearchListTile(resultId: leagueId, flag: leagueFlag, region: leagueRegion, name: leagueName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
