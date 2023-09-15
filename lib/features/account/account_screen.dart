import 'package:flutter/material.dart';
import '../../../common/widgets/custom_app_bar.dart';
import '../../../common/extensions/context/applocalization_context.dart';
import '../../common/constants/app_colors.dart';
import '../../common/theme/custom_text_style.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sample text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
