import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthPageCubit extends Cubit<AuthPageState> {
  AuthPageCubit() : super(const AuthPageState());

  StreamSubscription? _streamSubscription;

  Future<void> checkUserState() async {
    _streamSubscription = FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        if (user == null) {
          throw Exception('User is not logged in.');
        }
      },
    );
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
