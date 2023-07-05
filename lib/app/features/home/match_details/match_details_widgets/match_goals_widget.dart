import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/custom_widgets/event_text_samples.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchGoalsWidget extends StatelessWidget {
  const MatchGoalsWidget(this.liveMatch, {super.key});

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
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
          return const SizedBox(
            height: 150,
            child: Center(
              child: Text(
                'No details about this match',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          );
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        for (final event in matchEvents) ...[
                          liveMatch.teams!.home!.id == event.team!.id && event.type == 'Goal'
                              ? HomeEventTextSample(
                                  time: event.time!.elapsed.toString(),
                                  player: event.player!.name == null ? 'Unknown player' : event.player!.name!)
                              : const SizedBox(height: 0),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: Column(
                children: [
                  Icon(
                    Icons.sports_soccer,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        for (final event in matchEvents) ...[
                          liveMatch.teams!.away!.id == event.team!.id && event.type == 'Goal'
                              ? AwayEventTextSample(
                                  time: event.time!.elapsed.toString(),
                                  player: event.player!.name == null ? 'Unknown player' : event.player!.name!)
                              : const SizedBox(height: 0),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
