import 'package:flutter/material.dart';

import '../../../common/extensions/context/applocalization_context.dart';
import '../../../common/theme/custom_text_style.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const CircleAvatar(
                radius: 36,
                child: Icon(
                  Icons.person_outline,
                  size: 64,
                ),
              ),
              const SizedBox(height: 14),
              Text(
                context.localizations.temporarySampleName,
                style: const CustomTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
