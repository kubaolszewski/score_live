import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchEventsWidget extends StatelessWidget {
  const MatchEventsWidget(this.liveMatch, {super.key});

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
                    child: ListView.builder(
                      itemCount: matchEvents.length,
                      itemBuilder: (context, index) {
                        final event = matchEvents[index];
                        if (liveMatch.teams!.home!.id == event.team!.id) {
                          if (event.type == 'Goal') {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(event.time!.elapsed.toString(),
                                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                const SizedBox(width: 5),
                                Text(event.player!.name!,
                                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              ],
                            );
                          }
                        }
                        return const SizedBox.shrink();
                      },
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
                    child: ListView.builder(
                      itemCount: matchEvents.length,
                      itemBuilder: (context, index) {
                        final event = matchEvents[index];
                        if (liveMatch.teams!.away!.id == event.team!.id) {
                          if (event.type == 'Goal') {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(event.player!.name!,
                                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                const SizedBox(width: 5),
                                Text(event.time!.elapsed.toString(),
                                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              ],
                            );
                          }
                        }
                        return const SizedBox.shrink();
                      },
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
