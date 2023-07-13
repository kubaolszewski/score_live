import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition_module.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class CompetitionSearchBar extends StatelessWidget {
  final competitionCubit = Modular.get<CompetitionCubit>();
  final TextEditingController searchingController = TextEditingController();

  CompetitionSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    String dropdownValue = 'Team';

    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        return SafeArea(
          child: SizedBox(
            width: width,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  suffixIcon: DropdownButton(
                    dropdownColor: AppColors.listTileGrey,
                    value: dropdownValue,
                    items: <String>['Team', 'League (name)']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      dropdownValue = value!;
                      competitionCubit.switchSearching(dropdownValue);
                    },
                  ),
                  hintText: context.localizations.searchBarHint,
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                controller: searchingController,
                cursorColor: Colors.white,
                onSubmitted: (nameQuery) {
                  switch (state.searchTypes) {
                    case SearchTypes.teamName:
                      Modular.to.pushNamed(CompetitionPath.searchedLeaguesPath, arguments: nameQuery);
                    case SearchTypes.leagueName:
                      Modular.to.pushNamed(CompetitionPath.searchedLeaguesPath, arguments: nameQuery);
                  }
                  searchingController.clear();
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
