import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart' hide ModularWatchExtension;
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'package:score_live/app/features/home/home_widgets/home_options_tap_bar/home_options_tap_bar.dart';
import 'package:score_live/app/features/home/home_widgets/home_screen_date_picker/home_screen_date_picker.dart';
import 'package:score_live/app/features/home/home_widgets/live_now_view/cubit/live_now_view_cubit.dart';
import 'package:score_live/app/features/home/home_widgets/live_now_view/live_now_view.dart';
import 'package:score_live/app/features/home/home_tabs/upcoming_tab/upcoming_tab.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/score_tab.dart';
import 'package:score_live/app/features/home/home_tabs/favorites_tab/favorites_tab.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final homeCubit = Modular.get<HomeCubit>();
final liveNowViewCubit = Modular.get<LiveNowViewCubit>();
final scoreTabCubit = Modular.get<ScoreTabCubit>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => homeCubit),
        BlocProvider(create: (context) => liveNowViewCubit..fetchLiveMatches(DateTime.now())),
        BlocProvider(create: (context) => scoreTabCubit..fetchMatchesByDate(DateTime(2023, 2, 11))),
      ],
      child: Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        appBar: CustomAppBar(
          title: const Text(
            'scorelive',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_rounded, color: Colors.white, size: 32),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none, color: Colors.white, size: 32),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HomeScreenDatePicker(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.localizations.liveNow,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        context.localizations.seeMore,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 215, 54, 108),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const LiveNowView(),
              HomeOptionsTapBar(),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  switch (state.homeOptions) {
                    case HomeOptions.upcoming:
                      return const UpcomingTab();
                    case HomeOptions.score:
                      return const ScoreTab();
                    case HomeOptions.favorites:
                      return const FavoritesTab();
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
