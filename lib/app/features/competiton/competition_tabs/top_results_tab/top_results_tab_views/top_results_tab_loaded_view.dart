import 'package:flutter/material.dart';
import 'package:score_live/app/common/widgets/search_list_tile.dart';
import 'package:score_live/app/common/extensions/context/applocalization_context.dart';
import 'package:score_live/app/common/extensions/context/dimensions_context.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class TopResultsTabLoadedView extends StatelessWidget {
  const TopResultsTabLoadedView({super.key, required this.results});

  final List<LeagueModel> results;

  @override
  Widget build(BuildContext context) {
    double height = context.mediaQueryHeight;
    double width = AppConstVariables.widthInfinity;
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
              itemCount: results.length,
              itemBuilder: (context, index) {
                final league = results[index];
                final String leagueFlag = league.country?.flag ?? AppConstVariables.defaultLeagueLogo;
                final String leagueRegion = league.country?.name ?? AppConstVariables.stringPlaceholder;
                final String leagueName = league.league?.name ?? context.localizations.unknownLeague;
                return SearchListTile(flag: leagueFlag, region: leagueRegion, name: leagueName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
