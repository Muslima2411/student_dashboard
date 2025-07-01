import 'dart:async';
import 'package:flutter/material.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';

class LoginController {
  LoginController({
    required this.emailController,
    required this.passwordController,
    required this.loginBloc,
  }) {
    formValidNotifier = ValueNotifier<bool>(isFormValid);
    _setupListeners();
  }

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final LoginBloc loginBloc;

  late final ValueNotifier<bool> formValidNotifier;
  Timer? _debounceTimer;

  void _setupListeners() {
    emailController.addListener(_onChanged);
    passwordController.addListener(_onChanged);
  }

  void _onChanged() {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 300), () {
      loginBloc.add(LoginEvent.emailChanged(emailController.text));
      loginBloc.add(LoginEvent.passwordChanged(passwordController.text));

      // Update form validity
      formValidNotifier.value = isFormValid;
    });
  }

  bool get isFormValid {
    return emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        _isValidEmail(emailController.text);
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  void dispose() {
    _debounceTimer?.cancel();
    emailController.removeListener(_onChanged);
    passwordController.removeListener(_onChanged);
    formValidNotifier.dispose();
  }
}
