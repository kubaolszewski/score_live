import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/app/features/competiton/searched_competition_screen/searched_competition_view.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class SearchedCompetitionScreen extends StatefulWidget {
  const SearchedCompetitionScreen({super.key});

  @override
  State<SearchedCompetitionScreen> createState() => _SearchedCompetitionScreenState();
}

String dropdownValue = 'Team';
final searchingController = TextEditingController();
final competitionCubit = Modular.get<CompetitionCubit>();

class _SearchedCompetitionScreenState extends State<SearchedCompetitionScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
        leading: IconButton(
            onPressed: () {
              Modular.to.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: const Text(
          'Competition',
          style: CommonTextStyles.basicWhiteText,
        ),
      ),
      body: BlocProvider<CompetitionCubit>(
        create: (context) => competitionCubit,
        child: BlocBuilder<CompetitionCubit, CompetitionState>(
          builder: (context, state) {
            if (state.isLoading == true) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainThemePink,
                ),
              );
            }

            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.inactiveItemGrey),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: context.localizations.searchBarHint,
                        hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      cursorColor: Colors.white,
                      controller: searchingController,
                      onSubmitted: (nameQuery) {
                        searchingController.text = nameQuery;
                        competitionCubit.searchingLeagues(nameQuery);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  DropdownButton<String>(
                    dropdownColor: Colors.black,
                    value: dropdownValue,
                    items: <String>['Team', 'League', 'Cup'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: const TextStyle(color: Colors.white)),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                        switch (value) {
                          case 'Team':
                            competitionCubit.searchingTeams(searchingController.text);
                          case 'League':
                            competitionCubit.searchingLeagues(searchingController.text);
                          case 'Cup':
                            competitionCubit.searchingLeagues(searchingController.text);
                        }
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  Text(
                    context.localizations.topHeader,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SearchedCompetitionView(width: width, height: height, results: state.leagueResults),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
