import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_views.dart/match_h2h_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_views.dart/match_lineup_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_views.dart/match_standings_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_views.dart/match_stats_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_views.dart/match_summary_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_widgets/match_details_tab_bar.dart';
import 'package:score_live/app/features/home/match_details/match_details_widgets/match_details_title.dart';
import 'package:score_live/app/features/home/match_details/match_details_widgets/match_goals_widget.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class MatchDetails extends StatelessWidget {
  MatchDetails({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  final homeCubit = Modular.get<HomeCubit>();
  final matchDetailsCubit = Modular.get<MatchDetailsCubit>();

  @override
  Widget build(BuildContext context) {
    const String defaultFlag =
        'https://thumbs.dreamstime.com/b/handshake-vector-icon-black-illustration-isolated-graphic-web-design-business-contract-agreement-flat-symbol-white-98077091.jpg';
    final assetName = liveMatch.league!.flag;
    double width = MediaQuery.sizeOf(context).width;
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => homeCubit,
        ),
        BlocProvider(
          create: (context) => matchDetailsCubit..fetchMatchEvents(liveMatch.fixture!.id!.toString()),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        appBar: CustomAppBar(
          title: MatchDetailsTitle(liveMatch.league!.name!),
          leading: IconButton(
              onPressed: () {
                Modular.to.pop();
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
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: width,
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
                                  child: ClipOval(
                                    child: assetName == null
                                        ? CachedNetworkImage(
                                            imageUrl: defaultFlag,
                                            fit: BoxFit.fill,
                                            progressIndicatorBuilder: (context, url, downloadProgress) =>
                                                CircularProgressIndicator(value: downloadProgress.progress),
                                            errorWidget: (context, url, error) => const Icon(
                                              Icons.error,
                                              color: Colors.white,
                                            ),
                                          )
                                        : SvgPicture.network(
                                            assetName,
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
                                  liveMatch.league!.name!,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: AppColors.liveTimerBackgroundGreen,
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
                            Expanded(
                              flex: 1,
                              child: SizedBox.square(
                                dimension: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: NetworkImage(liveMatch.teams!.home!.logo!, scale: 3),
                                    ),
                                    Text(liveMatch.teams!.home!.name!,
                                        textAlign: TextAlign.center, style: CommonTextStyles.basicWhiteTextwithWeight),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 30),
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  liveMatch.fixture!.status!.short == 'NS' || liveMatch.fixture!.status!.short == 'TBD'
                                      ? Text(
                                          liveMatch.fixture!.status!.long!,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      : Text(
                                          '${liveMatch.goals!.home} - '
                                          '${liveMatch.goals!.away}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            Expanded(
                              flex: 1,
                              child: SizedBox.square(
                                dimension: 110,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(
                                      image: NetworkImage(
                                        liveMatch.teams!.away!.logo!,
                                        scale: 3,
                                      ),
                                    ),
                                    Text(liveMatch.teams!.away!.name!,
                                        textAlign: TextAlign.center, style: CommonTextStyles.basicWhiteTextwithWeight),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Divider(color: Colors.grey, thickness: 0.5),
                        const SizedBox(height: 5),
                        BlocBuilder<HomeCubit, HomeState>(
                          builder: (context, state) {
                            return MatchGoalsWidget(liveMatch);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const MatchDetailsTabBar(),
              BlocBuilder<MatchDetailsCubit, MatchDetailsState>(
                builder: (context, state) {
                  final matchEvents = state.matchEvents;
                  switch (state.detailsOptions) {
                    case DetailsOptions.summary:
                      return MatchSummaryView(
                        liveMatch: liveMatch,
                        matchEvents: matchEvents,
                      );
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
