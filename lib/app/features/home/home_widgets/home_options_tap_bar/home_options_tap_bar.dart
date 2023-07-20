import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_widgets/home_options_tap_bar/options_button.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';

class HomeOptionsTapBar extends StatelessWidget {
  const HomeOptionsTapBar({super.key});

  HomeCubit _homeCubit(BuildContext context) => context.read<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => previous.homeOptions != current.homeOptions,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    _homeCubit(context).toggleButton(true, false, false);
                    _homeCubit(context).switchHomeOptions(HomeOptions.upcoming);
                  },
                  child:
                      OptionsButton(isActive: state.isUpcomingActive, buttonTitle: context.localizations.homeUpcoming),
                ),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      _homeCubit(context).toggleButton(false, true, false);
                      _homeCubit(context).switchHomeOptions(HomeOptions.score);
                    },
                    child: OptionsButton(isActive: state.isScoreActive, buttonTitle: context.localizations.homeScore)),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      _homeCubit(context).toggleButton(false, false, true);
                      _homeCubit(context).switchHomeOptions(HomeOptions.favorites);
                    },
                    child: OptionsButton(
                        isActive: state.isFavoritesActive, buttonTitle: context.localizations.homeFavorites)),
              ),
            ],
          ),
        );
      },
    );
  }
}
