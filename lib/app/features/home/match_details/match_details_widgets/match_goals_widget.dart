import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/custom_widgets/event_text_template.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class MatchGoalsWidget extends StatelessWidget {
  const MatchGoalsWidget(this.liveMatch, {super.key});

  final LiveMatchModel liveMatch;

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
                        if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                          if (homeTeamID == event.team!.id && event.type == AppConstVariables.goalEvent) ...[
                            EventTextTemplate(
                                event:event,
                                leadingProperty: event.time?.elapsed.toString() ?? AppConstVariables.stringPlaceholder,
                                player: event.player?.name ?? AppConstVariables.stringPlaceholder,
                                isHomeTeam: true),
                            const SizedBox(height: 2)
                          ]
                      ],
                    ],
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sports_soccer,
                          color: Colors.grey,
                        ),
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
                        if (event.team?.id != null && event.time?.elapsed != null && event.player?.name != null)
                          if (awayTeamID == event.team!.id && event.type == AppConstVariables.goalEvent) ...[
                            EventTextTemplate(
                                event:event,
                                leadingProperty: event.time?.elapsed.toString() ?? AppConstVariables.stringPlaceholder,
                                player: event.player?.name ?? AppConstVariables.stringPlaceholder,
                                isHomeTeam: false),
                            const SizedBox(height: 2)
                          ]
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
