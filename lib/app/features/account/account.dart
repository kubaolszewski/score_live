import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      appBar: CustomAppBar(
          title: Text(
        'My Account',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Account Page',
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
