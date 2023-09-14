import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/widgets/event_text_without_icon.dart';
import '../cubit/match_details_cubit.dart';
import '../../../../common/extensions/match_events/events_validation_ext.dart';
import '../../../../../models/match_model/match_model.dart';
import '../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../presentation/constants/app_colors.dart';
import '../../../../../presentation/constants/app_const_variables.dart';

class MatchGoalsWidget extends StatelessWidget {
  const MatchGoalsWidget(this.liveMatch, {super.key});

  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final int homeTeamID = liveMatch.teams?.home?.id ?? AppConstVariables.intPlaceholder;
    final int awayTeamID = liveMatch.teams?.away?.id ?? AppConstVariables.intPlaceholder;

    return BlocBuilder<MatchDetailsCubit, MatchDetailsState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.mainThemePink,
            ),
          );
        }

        final matchEvents = state.matchEvents;

        if (matchEvents.isEmpty) {
          return SizedBox(
            height: 150,
            child: Center(
              child: Text(
                context.localizations.noDetailsInfo,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          );
        }

        return ListView(
          shrinkWrap: true,
          primary: false,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (final event in matchEvents) ...[
                        if (event.validGoalsEventsOnly(homeTeamID))
                          EventTextWithoutIcon(
                              time: event.timeElapsed.toString(), player: event.playerName, isHomeTeam: true),
                        const SizedBox(height: 2)
                      ],
                    ],
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.sports_soccer, color: Colors.grey),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      for (final event in matchEvents) ...[
                        if (event.validGoalsEventsOnly(awayTeamID))
                          EventTextWithoutIcon(
                              time: event.timeElapsed.toString(), player: event.playerName, isHomeTeam: false),
                        const SizedBox(height: 2)
                      ],
                    ],
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
