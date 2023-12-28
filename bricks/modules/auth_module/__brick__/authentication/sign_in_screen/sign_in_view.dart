import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cubit/sign_in_cubit.dart';
import 'cubit/sign_in_cubit_event.dart';

///This is basic sign in view with app/corporation logo, two input fields: #email #password and sign in button
class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocPresentationListener<SignInCubit, SignInCubitEvent>(
          listener: onBlocPresentationEvent,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  //TODO: Add basic sign in view where
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onBlocPresentationEvent(BuildContext context, SignInCubitEvent? event) {
    switch (event.runtimeType) {
      case UserNotFound:
        //TODO: Implement UserNotFound error
        throw UnimplementedError();
      case SignInError:
        //TODO: Implement SignInError error
        throw UnimplementedError();
      default:
        //TODO: Implement default and others errors
        throw UnimplementedError();
    }
  }
}
