import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'sign_up_cubit_event.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState>
    with BlocPresentationMixin<SignUpState, SignUpCubitEvent> {
  SignUpCubit() : super(const SignUpState.initial());
}
