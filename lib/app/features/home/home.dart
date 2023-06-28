import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_details/favorites_details.dart';
import 'package:score_live/app/features/home/home_details/home_widgets/home_options_tap_bar.dart';
import 'package:score_live/app/features/home/home_details/home_widgets/home_screen_date_picker.dart';
import 'package:score_live/app/features/home/home_details/home_widgets/live_now_view.dart';
import 'package:score_live/app/features/home/home_details/score_details.dart';
import 'package:score_live/app/features/home/home_details/upcoming_details.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
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
              const HomeOptionsTapBar(),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  switch (state.homeOptions) {
                    case HomeOptions.upcoming:
                      return const UpcomingDetails();
                    case HomeOptions.score:
                      return const ScoreDetails();
                    case HomeOptions.favorites:
                      return const FavoritesDetails();
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
