import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/options_button.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';

class CompetitionOptionsTapBar extends StatelessWidget {
  const CompetitionOptionsTapBar({super.key});

  CompetitionCubit _competitionCubit(BuildContext context) => context.read<CompetitionCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompetitionCubit, CompetitionState>(
      buildWhen: (previous, current) => previous.browsingOptions != current.browsingOptions,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () => _competitionCubit(context).switchBrowsingOptions(BrowsingOptions.top),
                  child: OptionsButton(isActive: state.isTopActive, buttonTitle: context.localizations.top)),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () => _competitionCubit(context).switchBrowsingOptions(BrowsingOptions.region),
                  child: OptionsButton(isActive: state.isRegionActive, buttonTitle: context.localizations.region)),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () => _competitionCubit(context).switchBrowsingOptions(BrowsingOptions.favorites),
                  child: OptionsButton(
                      isActive: state.isFavoritesActive, buttonTitle: context.localizations.competitionFavorites)),
            ),
          ],
        );
      },
    );
  }
}
