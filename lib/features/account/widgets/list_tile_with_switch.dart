import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/theme/custom_text_style.dart';

class ListTileWithSwitch extends StatelessWidget {
  const ListTileWithSwitch({
    super.key,
    required this.switchController,
    required this.label,
    this.onChanged,
  });

  final bool switchController;
  final String label;
  final Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: const CustomTextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Switch(
        value: switchController,
        onChanged: onChanged,
        thumbColor: WidgetStateProperty.all<Color>(Colors.white),
        trackColor: switchController
            ? WidgetStateProperty.all<Color>(AppColors.mainThemePink)
            : WidgetStateProperty.all<Color>(Colors.grey),
        trackOutlineColor: switchController
            ? WidgetStateProperty.all<Color>(AppColors.mainThemePink)
            : WidgetStateProperty.all<Color>(Colors.grey),
      ),
    );
  }
}
