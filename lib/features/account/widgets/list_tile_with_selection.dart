import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/extensions/enums.dart';
import '../../../common/extensions/string/string_formatters_ext.dart';
import '../../../common/theme/custom_text_style.dart';
import '../cubit/account_cubit.dart';

class ListTileWithSelection extends StatelessWidget {
  const ListTileWithSelection({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountCubit, AccountState>(
      builder: (context, state) {
        SearchTypes currentFilter = state.searchFilter;

        return ListTile(
          title: Text(
            label,
            style: const CustomTextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: ButtonTheme(
            alignedDropdown: true,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<SearchTypes>(
                dropdownColor: Colors.grey,
                value: currentFilter,
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
                onChanged: (newFilter) {
                  currentFilter = newFilter!;
                  context.read<AccountCubit>().switchFilter(currentFilter);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
