import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart' hide ModularWatchExtension;
import '../competition_module.dart';
import '../cubit/competition_cubit.dart';
import '../../../../common/extensions/context/applocalization_context.dart';
import '../../../../common/extensions/enums.dart';
import '../../../../common/extensions/string/string_formatters_ext.dart';
import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_const_variables.dart';
import '../../../common/theme/custom_text_style.dart';

class CompetitionSearchBar extends StatelessWidget {
  CompetitionSearchBar({super.key});

  final TextEditingController searchingController = TextEditingController();

  CompetitionCubit _competitionCubit(BuildContext context) => context.read<CompetitionCubit>();

  @override
  Widget build(BuildContext context) {
    SearchTypes dropdownValue = SearchTypes.team;

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
                        child: DropdownButton<SearchTypes>(
                          borderRadius: BorderRadius.circular(8),
                          iconEnabledColor: Colors.white,
                          underline: const SizedBox.shrink(),
                          dropdownColor: AppColors.mainThemePink,
                          value: dropdownValue,
                          items: SearchTypes.values.map<DropdownMenuItem<SearchTypes>>(
                            (SearchTypes value) {
                              return DropdownMenuItem<SearchTypes>(
                                value: value,
                                child: Text(
                                  value.name.capitalize(),
                                  style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (SearchTypes? value) {
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
                    case SearchTypes.team:
                      Modular.to.pushNamed(CompetitionPath.searchedTeamsPath, arguments: nameQuery);
                    case SearchTypes.league:
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
