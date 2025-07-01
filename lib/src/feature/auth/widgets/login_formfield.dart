import 'package:flutter/material.dart';
import 'package:student_dashboard_app/src/feature/auth/widgets/password_visibility_button.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.labelText,
    required this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.suffixIcon,
    this.onFieldSubmitted,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String labelText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final void Function(String)? onFieldSubmitted;

  factory LoginFormField.email({
    required TextEditingController controller,
    required FocusNode focusNode,
    void Function(String)? onFieldSubmitted,
  }) {
    return LoginFormField(
      controller: controller,
      focusNode: focusNode,
      labelText: 'Email', // Use context.localized.email in real implementation
      prefixIcon: Icons.email_outlined,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: _validateEmail,
      onFieldSubmitted: onFieldSubmitted,
    );
  }

  factory LoginFormField.password({
    required TextEditingController controller,
    required FocusNode focusNode,
    required bool obscureText,
    required VoidCallback onToggleVisibility,
    void Function(String)? onFieldSubmitted,
  }) {
    return LoginFormField(
      controller: controller,
      focusNode: focusNode,
      labelText:
          'Password', // Use context.localized.password in real implementation
      prefixIcon: Icons.lock_outline,
      obscureText: obscureText,
      textInputAction: TextInputAction.done,
      validator: _validatePassword,
      onFieldSubmitted: onFieldSubmitted,
      suffixIcon: PasswordVisibilityButton(
        obscureText: obscureText,
        onToggle: onToggleVisibility,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      autocorrect: false,
      enableSuggestions: !obscureText,
      validator: validator,
      style: TextStyle(color: colorScheme.onSurface),
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        filled: true,
        fillColor: colorScheme.surface,
        prefixIcon: Icon(prefixIcon, color: colorScheme.outline),
        suffixIcon: suffixIcon,
        errorMaxLines: 2,
      ),
      onFieldSubmitted: onFieldSubmitted,
    );
  }

  static String? _validateEmail(String? value) {
    if (value?.isEmpty ?? true) return 'Email is required';
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? _validatePassword(String? value) {
    if (value?.isEmpty ?? true) return 'Password is required';
  }
}
