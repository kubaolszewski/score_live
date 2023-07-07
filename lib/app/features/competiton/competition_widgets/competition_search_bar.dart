import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition_module.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class CompetitionSearchBar extends StatelessWidget {
  CompetitionSearchBar({super.key});

  final competitionCubit = Modular.get<CompetitionCubit>();
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            controller: searchController,
            onSubmitted: (nameQuery) {
              searchController.text = nameQuery;
              searchController.clear();
            },
            onEditingComplete: () {
              competitionCubit.searchingResults(searchController.text);
              Modular.to.pushNamed(CompetitionPath.resultsPath);
            },
            style: const TextStyle(color: Colors.white, fontSize: 14),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.inactiveItemGrey,
              border: InputBorder.none,
              hintText: context.localizations.searchBarHint,
              hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }

  void dispose() {
    searchController.dispose();
  }
}
