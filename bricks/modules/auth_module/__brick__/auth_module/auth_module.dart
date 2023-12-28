import 'package:flutter_modular/flutter_modular.dart';

import 'sign_in_screen/cubit/sign_in_cubit.dart';
import 'sign_in_screen/sign_in_screen.dart';
import 'sign_up_screen/cubit/sign_up_cubit.dart';
import 'sign_up_screen/sign_up_screen.dart';

class AuthModule extends Module {
  @override
  void binds(i) {
    i.add<SignInCubit>(SignInCubit.new);
    i.add<SignUpCubit>(SignUpCubit.new);
  }

  @override
  List<Module> get imports => [
        //TODO: Add modules to be used, eg. Repositories Module
      ];

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const SignInScreen(),
      transition: TransitionType.rightToLeft,
    );
    r.child(
      SignUpScreen.path,
      child: (context) => const SignUpScreen(),
      transition: TransitionType.rightToLeft,
    );
  }
}
