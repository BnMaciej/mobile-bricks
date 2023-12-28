import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cubit/sign_up_cubit.dart';
import 'sign_up_view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const path = '/sign-up/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<SignUpCubit>(),
      child: const SignUpView(),
    );
  }
}
