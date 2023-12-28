import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cubit/sign_in_cubit.dart';

///This is basic sign in view with app/corporation logo, two input fields: #email #password and sign in button
class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GrowAppBar(),
      body: SafeArea(
        child: BlocPresentationListener<SignInCubit, LoginCubitEvent>(
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

  void onBlocPresentationEvent(BuildContext context, LoginCubitEvent? event) {
    switch (event.runtimeType) {
      case UserNotFound:
        context.showErrorSnackBar(
          title: context.localizations.loginPageUserNotFoundExceptionTitle,
          body: context.localizations.loginPageUserNotFoundExceptionMessage,
          onBodyLinkTapped: () => Modular.to.pushNamed(SignUpScreen.path.relativePath),
        );
      case LoginError:
        context.showDefaultErrorSnackbar();
      default:
        context.showDefaultErrorSnackbar();
    }
  }
}
