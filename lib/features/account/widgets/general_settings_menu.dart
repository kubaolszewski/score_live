import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/extensions/context/dimensions_context.dart';
import '../../../common/widgets/default_divider.dart';
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
  bool isVisible = true;
  bool darkTheme = false;
  bool enableNotifications = false;

  @override
  Widget build(BuildContext context) {
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
              dropdownController: isVisible,
              onPressed: () => setState(() => isVisible = !isVisible),
            ),
            isVisible
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
                        switchController: darkTheme,
                        label: context.localizations.accountDarkThemeSwitch,
                        onChanged: (bool newValue) => setState(() => darkTheme = newValue),
                      ),
                      const DefaultDivider(),
                      //TODO: Replace hardcoded text with enum switch later
                      ListTileWithSelection(label: context.localizations.accountFilterOptions, option: 'League'),
                      const DefaultDivider(),
                      //TODO: Replace hardcoded text with enum switch later
                      ListTileWithSelection(label: context.localizations.accountLanguageOptions, option: 'English')
                    ],
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
