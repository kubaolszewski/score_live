import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/competiton/searched_results/result_details/cubit/result_details_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';

import '../../../../../../core/enums.dart';
import '../../../../../custom_widgets/options_button.dart';

class ResultDetailsTabBar extends StatelessWidget {
  const ResultDetailsTabBar({super.key});

  ResultDetailsCubit _resultDetailsCubit(BuildContext context) => context.read<ResultDetailsCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultDetailsCubit, ResultDetailsState>(
      buildWhen: (previous, current) => previous.resultOptions != current.resultOptions,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              children: [
                TextButton(
                    onPressed: () => _resultDetailsCubit(context).switchDetailsOptions(ResultOptions.results),
                    child: OptionsButton(
                      isActive: state.isResultsTabActive,
                      buttonTitle: context.localizations.resultResultsTab,
                    )),
                TextButton(
                    onPressed: () => _resultDetailsCubit(context).switchDetailsOptions(ResultOptions.fixtures),
                    child: OptionsButton(
                      isActive: state.isFixturesTabActive,
                      buttonTitle: context.localizations.resultFixturesTab,
                    )),
                TextButton(
                    onPressed: () => _resultDetailsCubit(context).switchDetailsOptions(ResultOptions.standings),
                    child: OptionsButton(
                      isActive: state.isStandingsTabActive,
                      buttonTitle: context.localizations.resultStandingsTab,
                    )),
                TextButton(
                    onPressed: () => _resultDetailsCubit(context).switchDetailsOptions(ResultOptions.stats),
                    child: OptionsButton(
                      isActive: state.isStatsTabActive,
                      buttonTitle: context.localizations.resultStatsTab,
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
