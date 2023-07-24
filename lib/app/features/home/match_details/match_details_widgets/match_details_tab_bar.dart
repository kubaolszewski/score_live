import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/options_button.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';

class MatchDetailsTabBar extends StatelessWidget {
  const MatchDetailsTabBar({super.key});

  MatchDetailsCubit _matchDetailsCubit(BuildContext context) => context.read<MatchDetailsCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchDetailsCubit, MatchDetailsState>(
      buildWhen: (previous, current) => previous.detailsOptions != current.detailsOptions,
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.summary);
                  },
                  child: OptionsButton(
                    isActive: state.isSummaryActive,
                    buttonTitle: context.localizations.matchDetailsSummary,
                  )),
              const SizedBox(width: 15),
              TextButton(
                  onPressed: () {
                    _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.lineUp);
                  },
                  child: OptionsButton(
                    isActive: state.isLineUpActive,
                    buttonTitle: context.localizations.matchDetailsLineUp,
                  )),
              const SizedBox(width: 15),
              TextButton(
                  onPressed: () {
                    _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.stats);
                  },
                  child: OptionsButton(
                    isActive: state.isStatsActive,
                    buttonTitle: context.localizations.matchDetailsStats,
                  )),
              const SizedBox(width: 15),
              TextButton(
                  onPressed: () {
                    _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.h2H);
                  },
                  child: OptionsButton(
                    isActive: state.isH2HActive,
                    buttonTitle: context.localizations.matchDetailsH2H,
                  )),
              const SizedBox(width: 15),
              TextButton(
                  onPressed: () {
                    _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.standings);
                  },
                  child: OptionsButton(
                    isActive: state.isStandingActive,
                    buttonTitle: context.localizations.matchDetailsStandings,
                  )),
            ],
          ),
        );
      },
    );
  }
}
