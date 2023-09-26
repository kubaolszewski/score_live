import 'package:flutter/material.dart';

import '../../common/constants/app_colors.dart';
import '../../common/extensions/context/applocalization_context.dart';
import '../../common/theme/custom_text_style.dart';
import '../../common/widgets/custom_app_bar.dart';
import 'widgets/avatar_widget.dart';
import 'widgets/favorites_counters_box.dart';
import 'widgets/general_settings_menu.dart';

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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            AvatarWidget(),
            SizedBox(height: 14),
            FavoritesCountersBox(),
            SizedBox(height: 24),
            GeneralSettingsMenu(),
          ],
        ),
      ),
    );
  }
}
