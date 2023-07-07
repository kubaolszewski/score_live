import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/top_results_tab.dart';
import 'package:score_live/app/features/competiton/competition_widgets/competition_options_tap_bar.dart';
import 'package:score_live/app/features/competiton/competition_widgets/competition_search_bar.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class CompetitionScreen extends StatelessWidget {
  CompetitionScreen({
    super.key,
  });

  final competitionCubit = Modular.get<CompetitionCubit>();
  final topResultsTabCubit = Modular.get<TopResultsTabCubit>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => competitionCubit),
        BlocProvider(create: (context) => topResultsTabCubit..fetchLeagues(DateTime.now())),
      ],
      child: Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        appBar: CustomAppBar(
          title: Text(
            context.localizations.competitionAppBarTitle,
            style: CommonTextStyles.basicWhiteText,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CompetitionSearchBar(),
              const SizedBox(height: 15),
              CompetitionOptionsTapBar(),
              BlocBuilder<CompetitionCubit, CompetitionState>(
                builder: (context, state) {
                  switch (state.browsingOptions) {
                    case BrowsingOptions.top:
                      return const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: TopResultsTab(),
                      );
                    case BrowsingOptions.region:
                      return const Placeholder(color: Colors.white);
                    case BrowsingOptions.favorites:
                      return const Placeholder(color: Colors.blue);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
