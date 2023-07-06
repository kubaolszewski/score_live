import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class CompetitionScreen extends StatelessWidget {
  const CompetitionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final competitionCubit = Modular.get<CompetitionCubit>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => competitionCubit),
      ],
      child: Scaffold(
        backgroundColor: AppColors.backgroundBlack,
        appBar: CustomAppBar(
          title: Text(
            context.localizations.competitionAppBarTitle,
            style: CommonTextStyles.basicWhiteText,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const _CustomSearchBar(),
                const _CompetitionOptionsTapBar(),
                BlocBuilder<CompetitionCubit, CompetitionState>(
                  builder: (context, state) {
                    switch (state.browsingOptions) {
                      case BrowsingOptions.top:
                        return const Placeholder(color: Colors.red);
                      case BrowsingOptions.region:
                        return const Placeholder(color: Colors.white);
                      case BrowsingOptions.favorites:
                        return const Placeholder(color: Colors.blue);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CompetitionOptionsTapBar extends StatelessWidget {
  const _CompetitionOptionsTapBar();

  @override
  Widget build(BuildContext context) {
    final competitionCubit = Modular.get<CompetitionCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            competitionCubit.switchBrowsingOptions(BrowsingOptions.top);
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 4.0),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              width: 3.0,
              color: AppColors.mainThemePink,
            ))),
            child: const Text(
              'Top',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            competitionCubit.switchBrowsingOptions(BrowsingOptions.region);
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 4.0),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              width: 3.0,
              color: AppColors.mainThemePink,
            ))),
            child: const Text(
              'Region',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            competitionCubit.switchBrowsingOptions(BrowsingOptions.favorites);
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 4.0),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              width: 3.0,
              color: AppColors.mainThemePink,
            ))),
            child: const Text(
              'Favorites',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _CustomSearchBar extends StatelessWidget {
  const _CustomSearchBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.inactiveItemGrey,
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search for competition, club etc.',
          hintStyle: TextStyle(color: Colors.white, fontSize: 14),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
