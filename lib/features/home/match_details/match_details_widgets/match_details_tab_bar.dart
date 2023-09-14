import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/widgets/options_button.dart';
import '../cubit/match_details_cubit.dart';
import '../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../common/extensions/enums.dart';

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
                  onPressed: () => _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.summary),
                  child: OptionsButton(
                    isActive: state.isSummaryActive,
                    buttonTitle: context.localizations.matchDetailsSummary,
                  )),
              TextButton(
                  onPressed: () => _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.lineUp),
                  child: OptionsButton(
                    isActive: state.isLineUpActive,
                    buttonTitle: context.localizations.matchDetailsLineUp,
                  )),
              TextButton(
                  onPressed: () => _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.stats),
                  child: OptionsButton(
                    isActive: state.isStatsActive,
                    buttonTitle: context.localizations.matchDetailsStats,
                  )),
              TextButton(
                  onPressed: () => _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.h2H),
                  child: OptionsButton(
                    isActive: state.isH2HActive,
                    buttonTitle: context.localizations.matchDetailsH2H,
                  )),
              TextButton(
                  onPressed: () => _matchDetailsCubit(context).switchDetailsOptions(DetailsOptions.standings),
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
