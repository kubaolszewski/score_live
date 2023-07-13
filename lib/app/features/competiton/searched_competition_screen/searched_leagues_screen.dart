import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/app/features/competiton/searched_competition_screen/searched_leagues_view.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class SearchedLeaguesScreen extends StatelessWidget {
  SearchedLeaguesScreen(
    this.nameQuery, {
    super.key,
  });

  final String nameQuery;

  final competitionCubit = Modular.get<CompetitionCubit>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        leading: IconButton(
            onPressed: () {
              Modular.to.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: Text(
          context.localizations.searchHeader,
          style: CommonTextStyles.basicWhiteText,
        ),
      ),
      body: BlocProvider<CompetitionCubit>(
        create: (context) => competitionCubit..searchingLeaguesByName(nameQuery),
        child: BlocBuilder<CompetitionCubit, CompetitionState>(
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
                  SearchedLeaguesView(width: width, height: height, results: leagues),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
