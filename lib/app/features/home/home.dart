import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart' hide ModularWatchExtension;
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/custom_widgets/live_match_tile.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_details/favorites_details.dart';
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
    final homeCubit = Modular.get<HomeCubit>();
    return BlocProvider<HomeCubit>(
      create: (context) => homeCubit
      ..fetchLiveMatches()
      ,
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
              const _HomeScreenDatePicker(),
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
              const _LiveNowView(),
              const _HomeOptionsTapBar(),
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

class _HomeScreenDatePicker extends StatefulWidget {
  const _HomeScreenDatePicker();

  @override
  State<_HomeScreenDatePicker> createState() => _HomeScreenDatePickerState();
}

class _HomeScreenDatePickerState extends State<_HomeScreenDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          Expanded(
            child: DatePicker(
              DateTime.now().subtract(const Duration(days: 2)),
              locale: context.myLocale.toString(),
              initialSelectedDate: DateTime.now(),
              daysCount: 8,
              monthTextStyle: const TextStyle(color: AppColors.inactiveDateTileText, fontWeight: FontWeight.bold),
              dayTextStyle: const TextStyle(color: AppColors.inactiveDateTileText, fontWeight: FontWeight.bold),
              dateTextStyle: const TextStyle(color: AppColors.inactiveDateTileText, fontWeight: FontWeight.bold),
              selectedTextColor: Colors.white,
              deactivatedColor: AppColors.inactiveItemGrey,
              height: 85,
              width: 75,
              onDateChange: (newDate) {},
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _LiveNowView extends StatelessWidget {
  const _LiveNowView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(child: CircularProgressIndicator());
        }

        final liveMatches = state.liveMatchResponse;

        if (liveMatches!.isEmpty) {
          return const SizedBox(
            height: 200,
            child: Center(
              child: Text('Nothing here :(', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          );
        }
        return SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: liveMatches.length,
            itemBuilder: (context, index) {
              final liveMatch = liveMatches[index];
              return LiveMatchTile(
                liveMatch: liveMatch,
              );
            },
          ),
        );
      },
    );
  }
}

class _HomeOptionsTapBar extends StatelessWidget {
  const _HomeOptionsTapBar();

  @override
  Widget build(BuildContext context) {
    final homeCubit = Modular.get<HomeCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              homeCubit.switchHomeOptions(HomeOptions.upcoming);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: AppColors.mainThemePink,
              ))),
              child: Text(
                context.localizations.homeUpcoming,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              homeCubit.switchHomeOptions(HomeOptions.score);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: AppColors.mainThemePink,
              ))),
              child: Text(
                context.localizations.homeScore,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              homeCubit.switchHomeOptions(HomeOptions.favorites);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: AppColors.mainThemePink,
              ))),
              child: Text(
                context.localizations.homeFavorites,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
