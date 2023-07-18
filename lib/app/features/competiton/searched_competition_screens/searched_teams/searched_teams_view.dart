import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/search_list_tile.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class SearchedTeamsView extends StatelessWidget {
  const SearchedTeamsView({super.key});


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = double.infinity;
    const String stringPlaceholder = '';

    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.mainThemePink,
            ),
          );
        }

        final teams = state.teamResults;

        if (teams.isEmpty) {
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
                    itemCount: teams.length,
                    itemBuilder: (context, index) {
                      final team = teams[index];
                      final String teamFlag = team.team?.logo ?? stringPlaceholder;
                      final String teamRegion = team.team?.country ?? stringPlaceholder;
                      final String teamName = team.team?.name ?? stringPlaceholder;
                      return SearchListTile(flag: teamFlag, region: teamRegion, name: teamName);
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
