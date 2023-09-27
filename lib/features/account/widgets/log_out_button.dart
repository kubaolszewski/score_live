import 'package:flutter/material.dart';

import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/extensions/context/dimensions_context.dart';
import '../../../common/theme/custom_text_style.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: context.mediaQueryWidth,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[900], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          onPressed: () {},
          child: Text(
            context.localizations.accountLogOut,
            style: const CustomTextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
