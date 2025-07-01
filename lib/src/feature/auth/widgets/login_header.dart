import 'package:flutter/material.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        Text(
          context.localized.signInTitle,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: colorScheme.onBackground,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          context.localized.signInSubtitle,
          style: TextStyle(
            fontSize: 16,
            color: colorScheme.onBackground.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
