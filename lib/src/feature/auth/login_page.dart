import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login_bloc.dart';
import 'bloc/login_event.dart';
import 'bloc/login_state.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  final _emailController = TextEditingController(text: 'loisbecket@gmail.com');
  final _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFE6F0FA), Color(0xFFDDE6F2)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign in to your Account',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Enter your email and password to log in',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 32),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onChanged:
                      (value) =>
                          context.read<LoginBloc>().add(EmailChanged(value)),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: const Icon(Icons.visibility_off),
                  ),
                  obscureText: true,
                  onChanged:
                      (value) =>
                          context.read<LoginBloc>().add(PasswordChanged(value)),
                ),
                const SizedBox(height: 32),
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        ElevatedButton(
                          onPressed:
                              state.isLoading
                                  ? null
                                  : () => context.read<LoginBloc>().add(
                                    const LoginSubmitted(),
                                  ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child:
                              state.isLoading
                                  ? const CircularProgressIndicator(
                                    color: Colors.white,
                                  )
                                  : const Text(
                                    'Log in',
                                    style: TextStyle(fontSize: 16),
                                  ),
                        ),
                        if (state.errorMessage != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Text(
                              state.errorMessage!,
                              style: const TextStyle(color: Colors.red),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
