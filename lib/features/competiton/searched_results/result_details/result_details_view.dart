import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../common/extensions/context/applocalization_context.dart';
import 'cubit/result_details_cubit.dart';
import 'widgets/result_details_header.dart';
import 'widgets/result_details_tab_bar.dart';
import 'widgets/tabs/fixtures_tab.dart';
import 'widgets/tabs/results_tab.dart';
import 'widgets/tabs/standings_tab.dart';
import 'widgets/tabs/stats_tab.dart';
import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/text_styles.dart';

import '../../../../../common/extensions/enums.dart';
import '../../../../../common/widgets/custom_app_bar.dart';
import '../../../../../common/widgets/search_list_tile.dart';

class ResultDetailsView extends StatelessWidget {
  const ResultDetailsView(
    this.params, {
    super.key,
  });

  final ResultParams params;

  @override
  Widget build(BuildContext context) {
    const space = 20.0;
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        title: Center(
          child: FittedBox(
            child: Text(
              context.localizations.navCompetition,
              style: const CustomTextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 24),
        ),
        actions: const [
          // TODO: Replace with IconButton later
          Icon(Icons.share, color: Colors.white, size: 20),
          Icon(Icons.star_rate_rounded, color: Colors.white, size: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResultDetailsHeader(params),
            const SizedBox(height: space),
            const ResultDetailsTabBar(),
            BlocBuilder<ResultDetailsCubit, ResultDetailsState>(
              builder: (context, state) {
                if (state.isLoading == true) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.mainThemePink,
                    ),
                  );
                }
                switch (state.resultOptions) {
                  case ResultOptions.results:
                    return ResultsTab(results: state.results);
                  case ResultOptions.fixtures:
                    return FixturesTab(fixtures: state.fixtures);
                  case ResultOptions.standings:
                    return StandingsTab(
                      standings: state.standings,
                      resultId: params.resultId!,
                    );
                  case ResultOptions.stats:
                    return StatsTab(
                      topGoals: state.topGoals,
                      topAssists: state.topAssists,
                      statsSwitch: state.statsSwitch,
                    );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
