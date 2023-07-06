import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class TopResultsTab extends StatelessWidget {
  const TopResultsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    // TODO: ^ values for future usage
    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.mainThemePink,
            ),
          );
        }
        // TODO: ^ code for future usage

        final leagues = state.league;

        if (leagues.isEmpty) {
          return const SizedBox(
            height: 200,
            child: Center(
              child: Text(
                'Something went wrong - leagues are not provided yet.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          );
        }
        return const Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
