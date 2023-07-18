import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/app/features/competiton/searched_competition_screens/searched_teams/searched_teams_view.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class SearchedTeamsScreen extends StatelessWidget {
  const SearchedTeamsScreen(
    this.nameQuery, {
    super.key,
  });

  final String nameQuery;

  @override
  Widget build(BuildContext context) {
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
          )),
      body: BlocProvider<CompetitionCubit>(
        create: (context) => Modular.get<CompetitionCubit>()..searchingTeamsByName(nameQuery),
        child: const SearchedTeamsView(),
      ),
    );
  }
}
