import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_tabs/favorites_tab/favorites_tab.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/score_tab.dart';
import 'package:score_live/app/features/home/home_tabs/upcoming_tab/upcoming_tab.dart';
import 'package:score_live/app/features/home/home_widgets/home_live_section_heading/home_live_section_heading.dart';
import 'package:score_live/app/features/home/home_widgets/home_options_tap_bar/home_options_tap_bar.dart';
import 'package:score_live/app/features/home/home_widgets/home_screen_app_bar_logo/home_screen_app_bar_logo.dart';
import 'package:score_live/app/features/home/home_widgets/home_screen_date_picker/home_screen_date_picker.dart';
import 'package:score_live/app/features/home/home_widgets/live_now/live_now.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        title: const HomeScreenAppBarLogo(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded, color: Colors.white, size: 30)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none, color: Colors.white, size: 30)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeScreenDatePicker(),
            const HomeLiveSectionHeading(),
            const LiveNow(),
            const HomeOptionsTapBar(),
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
    );
  }
}

