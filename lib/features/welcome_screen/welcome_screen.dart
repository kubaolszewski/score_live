import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_route_paths.dart';
import '../../common/extensions/context/applocalization_context.dart';
import '../../common/extensions/navigation/navigation_on_string_ext.dart';
import '../../common/theme/custom_text_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    context.localizations.appTitle,
                    style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 32),
                  ),
                  const Positioned(
                    top: 5,
                    right: 30,
                    child: CircleAvatar(backgroundColor: AppColors.mainThemePink, radius: 6),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Modular.to.pushNamed(AppRoutePaths.landingPath.relativePath),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.mainThemePink),
              child: const Text(
                'Get started',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
