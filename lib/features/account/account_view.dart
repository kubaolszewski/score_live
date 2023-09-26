import 'package:flutter/material.dart';

import '../../common/constants/app_colors.dart';
import '../../common/extensions/context/applocalization_context.dart';
import '../../common/extensions/context/dimensions_context.dart';
import '../../common/theme/custom_text_style.dart';
import '../../common/widgets/custom_app_bar.dart';
import 'widgets/avatar_widget.dart';
import 'widgets/favorites_counters_box.dart';
import 'widgets/general_settings_menu.dart';
import 'widgets/other_settings_menu.dart';

class AccountView extends StatelessWidget {
  const AccountView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
          title: Text(
        context.localizations.accountAppBarTitle,
        style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AvatarWidget(),
            const SizedBox(height: 14),
            const FavoritesCountersBox(),
            const SizedBox(height: 24),
            const GeneralSettingsMenu(),
            const SizedBox(height: 24),
            const OtherSettingsMenu(),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: context.mediaQueryWidth,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[900],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
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
            ),
          ],
        ),
      ),
    );
  }
}
