import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
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
    );
  }
}
