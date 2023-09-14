import 'package:flutter/material.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/extensions/context/applocalization_context.dart';
import '../../../presentation/constants/app_colors.dart';
import '../../../presentation/constants/text_styles.dart';

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
        style: CommonTextStyles.basicWhiteTextWithWeight,
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
