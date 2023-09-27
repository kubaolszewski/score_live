import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/extensions/context/dimensions_context.dart';
import '../../../common/widgets/default_divider.dart';
import '../cubit/account_cubit.dart';
import 'list_tile_with_selection.dart';
import 'list_tile_with_switch.dart';
import 'menu_dropdown_tile.dart';

class GeneralSettingsMenu extends HookWidget {
  const GeneralSettingsMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final enableDarkTheme = useState(false);
    final enableNotifications = useState(false);

    return BlocBuilder<AccountCubit, AccountState>(
      builder: (context, state) {
        return Container(
          width: context.mediaQueryWidth,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.listTileGrey,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuDropdownTile(
                  label: context.localizations.accountGeneralSettingsHeader,
                  dropdownController: state.generalSettingsVisibility,
                  onPressed: () => context.read<AccountCubit>().switchSettingsVisibility(),
                ),
                state.generalSettingsVisibility
                    ? ListView(
                        shrinkWrap: true,
                        primary: false,
                        children: [
                          ListTileWithSwitch(
                            switchController: enableNotifications.value,
                            label: context.localizations.accountAppNotificationsSwitch,
                            onChanged: (bool newValue) => enableNotifications.value = newValue,
                          ),
                          const DefaultDivider(),
                          ListTileWithSwitch(
                            switchController: enableDarkTheme.value,
                            label: context.localizations.accountDarkThemeSwitch,
                            onChanged: (bool newValue) => enableDarkTheme.value = newValue,
                          ),
                          const DefaultDivider(),
                          ListTileWithSelection(label: context.localizations.accountFilterOptions),
                          const DefaultDivider(),
                          ListTileWithSelection(label: context.localizations.accountLanguageOptions)
                        ],
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        );
      },
    );
  }
}
