import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailChanged>((event, emit) => emit(state.copyWith(email: event.email)));
    on<PasswordChanged>(
      (event, emit) => emit(state.copyWith(password: event.password)),
    );
    on<LoginSubmitted>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await Future.delayed(const Duration(seconds: 1));
      if (state.email == 'loisbecket@gmail.com' &&
          state.password == 'password123') {
        emit(state.copyWith(isLoading: false));
        // Add navigation logic here, e.g., context.router.push(MainWrapperRoute())
      } else {
        emit(
          state.copyWith(isLoading: false, errorMessage: 'Invalid credentials'),
        );
      }
    });
  }
}
