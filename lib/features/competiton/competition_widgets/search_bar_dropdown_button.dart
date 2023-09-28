import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/extensions/enums.dart';
import '../../../common/extensions/string/string_formatters_ext.dart';
import '../../../common/theme/custom_text_style.dart';
import '../cubit/competition_cubit.dart';

class SearchBarDropdownButton extends StatelessWidget {
  const SearchBarDropdownButton({super.key, required this.dropdownValue});

  final SearchTypes dropdownValue;

  @override
  Widget build(BuildContext context) {
    SearchTypes filter = dropdownValue;

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.mainThemePink,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<SearchTypes>(
          buttonStyleData: const ButtonStyleData(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          iconStyleData: const IconStyleData(
            iconEnabledColor: Colors.white,
          ),
          dropdownStyleData: const DropdownStyleData(
            decoration: BoxDecoration(
              color: AppColors.mainThemePink,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
          value: dropdownValue,
          items: SearchTypes.values
              .map<DropdownMenuItem<SearchTypes>>(
                (SearchTypes value) => DropdownMenuItem(
                  value: value,
                  child: Text(
                    value.name.capitalize(),
                    style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              )
              .toList(),
          onChanged: (SearchTypes? value) {
            filter = value!;
            context.read<CompetitionCubit>().switchSearching(filter);
          },
        ),
      ),
    );
  }
}
