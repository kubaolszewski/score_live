import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/widgets/search_list_tile.dart';
import '../../cubit/competition_cubit.dart';
import '../../../../common/extensions/context/applocalization_context.dart';
import '../../../../common/extensions/context/dimensions_context.dart';
import '../../../../../presentation/constants/app_colors.dart';
import '../../../../../presentation/constants/app_const_variables.dart';

class SearchedLeaguesView extends StatelessWidget {
  const SearchedLeaguesView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = context.mediaQueryHeight;
    double width = AppConstVariables.widthInfinity;

    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.mainThemePink,
            ),
          );
        }

        final leagues = state.leagueResults;

        if (leagues.isEmpty) {
          return SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  context.localizations.dataErrorInfo,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
          );
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: width,
                  height: height,
                  child: ListView.builder(
                    itemCount: leagues.length,
                    itemBuilder: (context, index) {
                      final league = leagues[index];
                      final leagueId = league.league?.id ?? AppConstVariables.intPlaceholder;
                      final String leagueFlag = league.country?.flag ?? AppConstVariables.defaultLeagueLogo;
                      final String leagueRegion = league.country?.name ?? AppConstVariables.stringPlaceholder;
                      final String leagueName = league.league?.name ?? context.localizations.unknownLeague;
                      return SearchListTile(
                          resultId: leagueId, flag: leagueFlag, region: leagueRegion, name: leagueName);
                    },
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
