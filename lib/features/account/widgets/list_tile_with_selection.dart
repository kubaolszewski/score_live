import 'package:flutter/material.dart';

import '../../../common/theme/custom_text_style.dart';

class ListTileWithSelection extends StatelessWidget {
  const ListTileWithSelection({
    super.key,
    required this.label,
    required this.option,
  });

  final String label;
  final String option;

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
      trailing: SizedBox(
        width: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              option,
              style: const CustomTextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 22,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
