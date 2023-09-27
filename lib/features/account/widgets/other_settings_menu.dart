import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/extensions/context/dimensions_context.dart';
import 'menu_dropdown_tile.dart';

class OtherSettingsMenu extends StatelessWidget {
  const OtherSettingsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    bool isVisible = true;
    return Container(
      width: context.mediaQueryWidth,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.listTileGrey,
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          MenuDropdownTile(
            dropdownController: isVisible,
            label: context.localizations.accounOtherSettingsHeader,
          )
        ]),
      ),
    );
  }
}
