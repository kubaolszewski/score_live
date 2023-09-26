import 'package:flutter/material.dart';

import '../../../common/theme/custom_text_style.dart';

class MenuDropdownTile extends StatelessWidget {
  const MenuDropdownTile({
    super.key,
    required this.dropdownController,
    this.onPressed,
    required this.label,
  });

  final bool dropdownController;
  final Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: const CustomTextStyle(
          fontSize: 20,
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
