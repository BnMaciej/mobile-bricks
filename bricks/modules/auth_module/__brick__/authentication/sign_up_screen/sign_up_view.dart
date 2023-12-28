import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../common/extensions/grow_snack_bar_on_context.dart';
import '../../../common/extensions/localization_on_build_context.dart';
import '../../../common/widgets/app_bar/grow_app_bar.dart';
import '../login_screen/login_screen.dart';
import '../sign_in_screen/sign_in_screen.dart';
import '../widgets/onboarding_header_text.dart';
import 'cubit/sign_up_cubit.dart';
import 'cubit/sign_up_cubit_event.dart';
import 'widgets/sign_up_button_section.dart';
import 'widgets/sign_up_form_section.dart';
import 'widgets/terms_and_conditions_section.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocPresentationListener<SignUpCubit, SignUpCubitEvent>(
          listener: onBlocListenerEvent,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 130),
              child: Column(
                children: [
                  //TODO: Add basic sign up view where
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onBlocListenerEvent(BuildContext context, SignUpCubitEvent? event) {
    switch (event) {
      case AccountAlreadyExists():
        context.showErrorSnackBar(
          title: context.localizations.signUpPageAccountAlreadyExistsExceptionHeader,
          body: context.localizations.signUpPageAccountAlreadyExistsExceptionBody,
          onBodyLinkTapped: () => Modular.to.pushNamed(SignInScreen.path),
        );
      case SignUpFailed():
        context.showDefaultErrorSnackbar();
      case TooManyRequests():
        context.showErrorSnackBar(
            title: context.localizations.snackbarDefaultExceptionHeader,
            body: context.localizations.signUpTooManyRequestsSnackbarBody);
      default:
        context.showDefaultErrorSnackbar();
    }
  }
}
