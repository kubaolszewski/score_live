import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

class LeagueListTile extends StatelessWidget {
  const LeagueListTile({
    super.key,
    required this.leagueFlag,
    required this.leagueRegion,
    required this.leagueName,
  });

  final String leagueFlag;
  final String leagueRegion;
  final String leagueName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.listTileGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: ClipOval(
                        child: SvgPicture.network(
                          leagueFlag,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        leagueRegion,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        leagueName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
