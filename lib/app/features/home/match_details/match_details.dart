import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_h2h_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_lineup_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_standings_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_stats_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_summary_view.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails({super.key});

  final _detailsTitle = const DetailsTitle();

  @override
  Widget build(BuildContext context) {
    final homeCubit = Modular.get<HomeCubit>();

    return BlocProvider<HomeCubit>(
      create: (context) => homeCubit,
      child: Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        appBar: CustomAppBar(
          title: _detailsTitle,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: Colors.white)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.star_rate_rounded, color: Colors.white)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.listTileGrey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            const Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'League name',
                                  style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(width: 180),
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: AppColors.liveTimerBackground,
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                  Text(
                                    'FT',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Placeholder(
                              fallbackHeight: 50,
                              fallbackWidth: 50,
                            ),
                            SizedBox(width: 30),
                            Text(
                              'Result',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 30),
                            Placeholder(fallbackHeight: 50, fallbackWidth: 50),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Divider(color: Colors.grey, thickness: 0.5, indent: 5.0, endIndent: 5.0),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("Antony 32'", style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text("Diogo Dalot 76'", style: TextStyle(color: Colors.white, fontSize: 16))
                              ],
                            ),
                            Column(
                              children: [Icon(Icons.sports_soccer, color: Colors.grey)],
                            ),
                            Column(
                              children: [
                                Text("Antony 32'", style: TextStyle(color: Colors.white, fontSize: 16)),
                                Text("Diogo Dalot 76'", style: TextStyle(color: Colors.white, fontSize: 16))
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const _MatchDetailsTapBar(),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  switch (state.detailsOptions) {
                    case DetailsOptions.summary:
                      return const MatchSummaryView();
                    case DetailsOptions.lineUp:
                      return const MatchLineUpView();
                    case DetailsOptions.stats:
                      return const MatchStatsView();
                    case DetailsOptions.h2H:
                      return const MatchH2HView();
                    case DetailsOptions.standings:
                      return const MatchStandingsView();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MatchDetailsTapBar extends StatelessWidget {
  const _MatchDetailsTapBar();

  @override
  Widget build(BuildContext context) {
    final homeCubit = Modular.get<HomeCubit>();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              homeCubit.switchDetailsOptions(DetailsOptions.summary);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsSummary,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              homeCubit.switchDetailsOptions(DetailsOptions.lineUp);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsLineUp,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              homeCubit.switchDetailsOptions(DetailsOptions.stats);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsStats,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              homeCubit.switchDetailsOptions(DetailsOptions.h2H);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsH2H,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              homeCubit.switchDetailsOptions(DetailsOptions.standings);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: Colors.pink,
              ))),
              child: Text(
                context.localizations.matchDetailsStandings,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsTitle extends StatelessWidget {
  const DetailsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Premier League',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.localizations.currentDay,
                style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
