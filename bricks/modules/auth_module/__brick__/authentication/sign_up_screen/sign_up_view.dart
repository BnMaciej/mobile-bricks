import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:flutter/material.dart';

import 'cubit/sign_up_cubit.dart';
import 'cubit/sign_up_cubit_event.dart';

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
        //TODO: Implement AccountAlreadyExists error
        throw UnimplementedError();
      case SignUpFailed():
        //TODO: Implement SignUpFailed error
        throw UnimplementedError();
      case TooManyRequests():
        //TODO: Implement TooManyRequests error
        throw UnimplementedError();
      default:
        //TODO: Implement Default and other cases
        throw UnimplementedError();
    }
  }
}
