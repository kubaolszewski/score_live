import 'package:flutter/material.dart';

import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/theme/custom_text_style.dart';

class MenuDropdownTile extends StatelessWidget {
  const MenuDropdownTile({
    super.key,
    required this.dropdownController,
    this.onPressed,
  });

  final bool dropdownController;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        context.localizations.accountGeneralSettingsHeader,
        style: const CustomTextStyle(
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.w300,
        ),
      ),
      trailing: IconButton(
        icon: dropdownController
            ? const Icon(
                Icons.keyboard_arrow_down,
                size: 26,
                color: Colors.grey,
              )
            : const Icon(
                Icons.keyboard_arrow_up,
                size: 26,
                color: Colors.grey,
              ),
        onPressed: onPressed,
      ),
    );
  }
}
