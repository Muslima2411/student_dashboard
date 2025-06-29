import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';

import '../settings/inherited/local_cubit.dart';
import '../settings/inherited/theme_controller.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localeCubit = context.read<LocaleCubit>();
    final themeCubit = context.read<ThemeCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localized.settings),
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Language Section
            Text(
              context.localized.language,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 12,
              children: [
                _languageButton(context, 'en', 'English', localeCubit),
                _languageButton(context, 'uz', "O'zbek", localeCubit),
                _languageButton(context, 'ru', 'Русский', localeCubit),
              ],
            ),
            const SizedBox(height: 32),

            // Theme Section
            Text(
              context.localized.theme,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                _themeToggle(context, isLight: true, themeCubit: themeCubit),
                const SizedBox(width: 12),
                _themeToggle(context, isLight: false, themeCubit: themeCubit),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _languageButton(
    BuildContext context,
    String code,
    String label,
    LocaleCubit cubit,
  ) {
    return ElevatedButton(
      onPressed: () => cubit.changeLocale(Locale(code)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(label),
    );
  }

  Widget _themeToggle(
    BuildContext context, {
    required bool isLight,
    required ThemeCubit themeCubit,
  }) {
    final isActive = themeCubit.isLight == isLight;
    return ElevatedButton(
      onPressed: () => themeCubit.setTheme(isLight),
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isActive ? Theme.of(context).colorScheme.primary : Colors.grey[400],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(isLight ? context.localized.light : context.localized.dark),
    );
  }
}
