import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'sign_in_cubit_event.dart';

part 'sign_in_cubit.freezed.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState>
    with BlocPresentationMixin<SignInState, SignInCubitEvent> {
  SignInCubit() : super(const SignInState.initial());
}
