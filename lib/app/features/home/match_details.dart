import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/core/enums.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails({super.key});

  final _detailsTitle = const DetailsTitle();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 17, 17),
        appBar: CustomAppBar(
          title: _detailsTitle,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
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
                    color: const Color.fromARGB(255, 44, 42, 42),
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
                                color: const Color.fromARGB(255, 215, 235, 216),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                  Text(
                                    '78',
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
                              children: [Icon(Icons.sports_soccer, color: Color.fromARGB(255, 104, 102, 102))],
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
                      return const _MatchSummaryView();
                    case DetailsOptions.lineUp:
                      return const _MatchLineUpView();
                    case DetailsOptions.stats:
                      return const _MatchStatsView();
                    case DetailsOptions.h2H:
                      return const _MatchH2HView();
                    case DetailsOptions.standings:
                      return const _MatchStandingsView();
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

class _MatchSummaryView extends StatelessWidget {
  const _MatchSummaryView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 44, 42, 42)),
            height: 200,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: SizedBox(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Half Time',
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Team #1 Home - Away Team #2',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 44, 42, 42)),
            height: 200,
          ),
        ],
      ),
    );
  }
}

class _MatchLineUpView extends StatelessWidget {
  const _MatchLineUpView();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: const Color.fromARGB(255, 44, 42, 42),
    );
  }
}

class _MatchStatsView extends StatelessWidget {
  const _MatchStatsView();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: const Color.fromARGB(255, 44, 42, 42),
    );
  }
}

class _MatchH2HView extends StatelessWidget {
  const _MatchH2HView();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: const Color.fromARGB(255, 44, 42, 42),
    );
  }
}

class _MatchStandingsView extends StatelessWidget {
  const _MatchStandingsView();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      color: const Color.fromARGB(255, 44, 42, 42),
    );
  }
}

class _MatchDetailsTapBar extends StatelessWidget {
  const _MatchDetailsTapBar();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<HomeCubit>().switchDetailsOptions(DetailsOptions.summary);
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 3.0,
                    color: Colors.pink,
                  ))),
                  child: const Text(
                    'Summary',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  context.read<HomeCubit>().switchDetailsOptions(DetailsOptions.lineUp);
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 3.0,
                    color: Colors.pink,
                  ))),
                  child: const Text(
                    'Line Up',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  context.read<HomeCubit>().switchDetailsOptions(DetailsOptions.stats);
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 3.0,
                    color: Colors.pink,
                  ))),
                  child: const Text(
                    'Stats',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  context.read<HomeCubit>().switchDetailsOptions(DetailsOptions.h2H);
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 3.0,
                    color: Colors.pink,
                  ))),
                  child: const Text(
                    'H2H',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  context.read<HomeCubit>().switchDetailsOptions(DetailsOptions.standings);
                },
                child: Container(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    width: 3.0,
                    color: Colors.pink,
                  ))),
                  child: const Text(
                    'Standings',
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class DetailsTitle extends StatelessWidget {
  const DetailsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Premier League',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Today',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
