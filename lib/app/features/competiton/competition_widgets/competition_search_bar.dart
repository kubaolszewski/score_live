import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition_module.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class CompetitionSearchBar extends StatelessWidget {
  CompetitionSearchBar({super.key});

  final TextEditingController searchingController = TextEditingController();

  CompetitionCubit _competitionCubit(BuildContext context) => Modular.get<CompetitionCubit>();

  @override
  Widget build(BuildContext context) {
    String dropdownValue = AppConstVariables.searchTypes.first;

    return BlocBuilder<CompetitionCubit, CompetitionState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: SizedBox(
              width: AppConstVariables.widthInfinity,
              height: 40,
              child: TextField(
                style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[850],
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  suffixIcon: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: AppColors.mainThemePink,
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          borderRadius: BorderRadius.circular(8),
                          iconEnabledColor: Colors.white,
                          underline: const SizedBox.shrink(),
                          dropdownColor: AppColors.mainThemePink,
                          value: dropdownValue,
                          items: AppConstVariables.searchTypes.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (String? value) {
                            dropdownValue = value!;
                            _competitionCubit(context).switchSearching(dropdownValue);
                          },
                        ),
                      ),
                    ),
                  ),
                  hintText: context.localizations.searchBarHint,
                  hintStyle: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700),
                ),
                cursorColor: Colors.white,
                controller: searchingController,
                onSubmitted: (nameQuery) {
                  switch (dropdownValue) {
                    case 'Team':
                      Modular.to.pushNamed(CompetitionPath.searchedTeamsPath, arguments: nameQuery);
                    case 'League':
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
