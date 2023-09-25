import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/extensions/context/dimensions_context.dart';
import '../../../common/theme/custom_text_style.dart';

class GeneralSettingsMenu extends StatelessWidget {
  const GeneralSettingsMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mediaQueryWidth,
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.listTileGrey,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownMenu(
            menuStyle: MenuStyle(),
            label: Text(
              'General',
              style: CustomTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            width: 350,
            dropdownMenuEntries: [],
            trailingIcon: Icon(Icons.keyboard_arrow_down),
          ),
        ],
      ),
    );
  }
}
