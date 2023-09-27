import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'account_view.dart';
import 'cubit/account_cubit.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountCubit(),
      child: const AccountView(),
    );
  }
}
