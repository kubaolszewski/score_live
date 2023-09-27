import 'package:flutter/material.dart';

import '../../../common/constants/app_const_variables.dart';
import '../../../common/theme/custom_text_style.dart';

class FavoritesCounterText extends StatelessWidget {
  const FavoritesCounterText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const CustomTextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ),
        const Text(
          '${AppConstVariables.intPlaceholder}',
          style: CustomTextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
