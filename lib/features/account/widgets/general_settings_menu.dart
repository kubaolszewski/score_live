import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/extensions/context/dimensions_context.dart';
import '../../../common/widgets/default_divider.dart';
import '../cubit/account_cubit.dart';
import 'list_tile_with_selection.dart';
import 'list_tile_with_switch.dart';
import 'menu_dropdown_tile.dart';

class GeneralSettingsMenu extends StatefulWidget {
  const GeneralSettingsMenu({
    super.key,
  });

  @override
  State<GeneralSettingsMenu> createState() => _GeneralSettingsMenuState();
}

class _GeneralSettingsMenuState extends State<GeneralSettingsMenu> {
  bool enableDarkTheme = false;
  bool enableNotifications = false;

  @override
  Widget build(BuildContext context) {
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
                            switchController: enableNotifications,
                            label: context.localizations.accountAppNotificationsSwitch,
                            onChanged: (bool newValue) => setState(() => enableNotifications = newValue),
                          ),
                          const DefaultDivider(),
                          ListTileWithSwitch(
                            switchController: enableDarkTheme,
                            label: context.localizations.accountDarkThemeSwitch,
                            onChanged: (bool newValue) => setState(() => enableDarkTheme = newValue),
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
