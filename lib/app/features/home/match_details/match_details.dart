import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_h2h_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_lineup_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_standings_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_stats_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_summary_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_widgets/match_details_tab_bar.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchDetails extends StatelessWidget {
  MatchDetails({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;
  final homeCubit = Modular.get<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    final String flag = liveMatch.league?.flag ??
        'https://thumbs.dreamstime.com/b/handshake-vector-icon-black-illustration-isolated-graphic-web-design-business-contract-agreement-flat-symbol-white-98077091.jpg';
    final String leagueName = liveMatch.league!.name ?? 'Unknown league';
    final String homeTeamLogo =
        liveMatch.teams?.home?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String awayTeamLogo =
        liveMatch.teams?.away?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String homeTeamName = liveMatch.teams?.home?.name ?? 'Unknown home team';
    final String awayTeamName = liveMatch.teams?.away?.name ?? 'Unknown away team';
    return BlocProvider<HomeCubit>(
      create: (context) => homeCubit,
      child: Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        appBar: CustomAppBar(
          title: _DetailsTitle(liveMatch.league!.name!),
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
                  width: 400,
                  decoration: BoxDecoration(
                    color: AppColors.listTileGrey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  child: ClipOval(child: SvgPicture.network(
                                            flag,
                                            fit: BoxFit.cover,
                                            placeholderBuilder: (BuildContext context) => Container(
                                              padding: const EdgeInsets.all(30.0),
                                              child: const Center(
                                                child: CircularProgressIndicator(
                                                  backgroundColor: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  leagueName,
                                  style: const TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: AppColors.liveTimerBackground,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: liveMatch.fixture!.status!.short! == 'TBD' ||
                                            liveMatch.fixture!.status!.short! == 'NS' ||
                                            liveMatch.fixture!.status!.short! == 'SUSP'
                                        ? Colors.red
                                        : Colors.green,
                                  ),
                                  Text(
                                    liveMatch.fixture!.status!.short!,
                                    style: TextStyle(
                                        color: liveMatch.fixture!.status!.short! == 'TBD' ||
                                                liveMatch.fixture!.status!.short! == 'NS' ||
                                                liveMatch.fixture!.status!.short! == 'SUSP'
                                            ? Colors.black
                                            : Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: NetworkImage(homeTeamLogo, scale: 3),
                                ),
                                Text(homeTeamName,
                                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 30),
                            Text(
                              '${liveMatch.goals!.home} - '
                              '${liveMatch.goals!.away}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: NetworkImage(
                                    awayTeamLogo,
                                    scale: 3,
                                  ),
                                ),
                                Text(awayTeamName,
                                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Divider(color: Colors.grey, thickness: 0.5, indent: 5.0, endIndent: 5.0),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [],
                              ),
                            ),
                            Expanded(
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
                                children: [],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const MatchDetailsTabBar(),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  switch (state.detailsOptions) {
                    case DetailsOptions.summary:
                      return MatchSummaryView(liveMatch: liveMatch);
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

class _DetailsTitle extends StatelessWidget {
  const _DetailsTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
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
