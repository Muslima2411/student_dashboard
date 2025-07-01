import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailChanged>((event, emit) {
      print('[LoginBloc] EmailChanged: ${event.email}');
      emit(state.copyWith(email: event.email));
    });

    on<PasswordChanged>((event, emit) {
      print('[LoginBloc] PasswordChanged: ${event.password}');
      emit(state.copyWith(password: event.password));
    });

    on<LoginSubmitted>((event, emit) async {
      print('[LoginBloc] LoginSubmitted');
      emit(state.copyWith(isLoading: true));

      await Future.delayed(const Duration(seconds: 1));

      if (state.email == 'loisbecket@gmail.com' &&
          state.password == 'password123') {
        print('[LoginBloc] Login successful');
        emit(state.copyWith(isLoading: false, isLoginSuccessful: true));
      } else {
        emit(
          state.copyWith(isLoading: false, errorMessage: 'Invalid credentials'),
        );
      }
    });
  }
}
