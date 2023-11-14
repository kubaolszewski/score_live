import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'account_view.dart';
import 'cubit/account_cubit.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
    super.key,
  });

  static const path = '/account/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<AccountCubit>(),
      child: const AccountView(),
    );
  }
}
