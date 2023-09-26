import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/extensions/context/dimensions_context.dart';
import '../../../common/theme/custom_text_style.dart';
import 'list_tile_with_selection.dart';
import 'list_tile_with_switch.dart';

class GeneralSettingsMenu extends StatefulWidget {
  const GeneralSettingsMenu({
    super.key,
  });

  @override
  State<GeneralSettingsMenu> createState() => _GeneralSettingsMenuState();
}

class _GeneralSettingsMenuState extends State<GeneralSettingsMenu> {
  bool isVisible = false;
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
            ListTile(
              title: const Text(
                'General',
                style: CustomTextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: IconButton(
                icon: isVisible
                    ? const Icon(
                        Icons.keyboard_arrow_down,
                        size: 26,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.keyboard_arrow_up,
                        size: 26,
                        color: Colors.white,
                      ),
                onPressed: () => setState(() => isVisible = !isVisible),
              ),
            ),
            isVisible
                ? ListView(
                    shrinkWrap: true,
                    primary: false,
                    children: [
                      ListTileWithSwitch(
                        switchController: enableNotifications,
                        label: 'App Notifications',
                        onChanged: (bool newValue) => setState(() => enableNotifications = newValue),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      ListTileWithSwitch(
                        switchController: darkTheme,
                        label: 'Dark Theme',
                        onChanged: (bool newValue) => setState(() => darkTheme = newValue),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      const ListTileWithSelection(label: 'Filter Matches By', option: 'League'),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      const ListTileWithSelection(label: 'Language', option: 'English')
                    ],
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
