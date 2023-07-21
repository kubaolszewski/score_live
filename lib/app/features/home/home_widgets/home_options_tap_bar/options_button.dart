import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({
    super.key,
    required this.isActive,
    required this.buttonTitle,
  });

  final bool isActive;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 2.0),
      decoration: isActive == true
          ? const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
              width: 3.0,
              color: AppColors.mainThemePink,
            )))
          : null,
      child: Text(
        buttonTitle,
        style: TextStyle(
          color: isActive ? Colors.white : AppColors.inactiveTextGrey,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
