import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cubit/sign_in_cubit.dart';
import 'sign_in_view.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const path = '/sign-in/';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Modular.get<SignInCubit>()),
      ],
      child: const SignInView(),
    );
  }
}
