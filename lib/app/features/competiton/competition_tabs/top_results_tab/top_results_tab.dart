import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/league_list_tile.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class TopResultsTab extends StatelessWidget {
  const TopResultsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<TopResultsTabCubit, TopResultsTabState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.mainThemePink,
            ),
          );
        }

        final leagues = state.leagueModel;

        if (leagues.isEmpty) {
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
                textAlign: TextAlign.left,
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
              ),
            ],
          ),
        );
      },
    );
  }
}