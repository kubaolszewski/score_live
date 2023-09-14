import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common/widgets/options_button.dart';
import '../cubit/competition_cubit.dart';
import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/extensions/enums.dart';

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
