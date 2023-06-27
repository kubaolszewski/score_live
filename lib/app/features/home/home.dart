import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/core/enums.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/custom_widgets/live_match_tile.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/match_details/favorites_details.dart';
import 'package:score_live/app/features/home/match_details/score_details.dart';
import 'package:score_live/app/features/home/match_details/upcoming_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 17, 17),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ListView(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Live Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See more',
                        style: TextStyle(
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

class _LiveNowView extends StatelessWidget {
  const _LiveNowView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          LiveMatchTile(),
          LiveMatchTile(),
          LiveMatchTile(),
        ],
      ),
    );
  }
}

class _HomeOptionsTapBar extends StatelessWidget {
  const _HomeOptionsTapBar();

  HomeCubit _homeCubit(BuildContext context) => context.read<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              _homeCubit(context).switchHomeOptions(HomeOptions.upcoming);
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
                'Upcoming',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _homeCubit(context).switchHomeOptions(HomeOptions.score);
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
                'Score',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _homeCubit(context).switchHomeOptions(HomeOptions.favorites);
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
                'Favorites',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
