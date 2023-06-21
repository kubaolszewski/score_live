
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LandingPageGuard extends RouteGuard {
  LandingPageGuard() : super(redirectTo: '/home');

  Future<bool> checkCurrentUser() async {
    return FirebaseAuth.instance.currentUser != null;
  }

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    return await Modular.get<LandingPageGuard>().checkCurrentUser();
  }
}