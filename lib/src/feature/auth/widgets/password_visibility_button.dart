import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordVisibilityButton extends StatelessWidget {
  const PasswordVisibilityButton({
    super.key,
    required this.obscureText,
    required this.onToggle,
  });

  final bool obscureText;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: Icon(
          obscureText ? Icons.visibility_off : Icons.visibility,
          key: ValueKey(obscureText),
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
      onPressed: () {
        HapticFeedback.lightImpact();
        onToggle();
      },
    );
  }
}
