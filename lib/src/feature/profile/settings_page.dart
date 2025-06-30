import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';
import 'package:student_dashboard_app/src/feature/profile/widgets/edit_profile_bottom_sheet.dart';

import '../settings/inherited/local_cubit.dart';
import '../settings/inherited/theme_controller.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localeCubit = context.read<LocaleCubit>();
    final themeCubit = context.read<ThemeCubit>();
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.onPrimary,
      appBar: AppBar(
        title: Text(context.localized.settings),
        backgroundColor: colorScheme.onPrimary,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Info Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.localized.profileInfo,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                      builder: (context) => const EditProfileBottomSheet(),
                    );
                  },
                  child: Text(
                    context.localized.edit,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 12),
            _ProfileInfoCard(),
            // Language Section
            Text(
              context.localized.language,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            // const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              children: [
                _languageButton(context, 'en', 'English', localeCubit),
                _languageButton(context, 'uz', "O'zbek", localeCubit),
                _languageButton(context, 'ru', 'Русский', localeCubit),
              ],
            ),
            //
            // const SizedBox(height: 15),

            // Theme Section
            Text(
              context.localized.theme,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            // const SizedBox(height: 12),
            Row(
              children: [
                _themeToggle(context, isLight: true, themeCubit: themeCubit),
                const SizedBox(width: 12),
                _themeToggle(context, isLight: false, themeCubit: themeCubit),
              ],
            ),

            // const SizedBox(height: 20),
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
    final colorScheme = Theme.of(context).colorScheme;
    final currentLocale = Localizations.localeOf(context).languageCode;
    final isSelected = currentLocale == code;

    return OutlinedButton(
      onPressed: () => cubit.changeLocale(Locale(code)),
      style: OutlinedButton.styleFrom(
        backgroundColor: isSelected ? colorScheme.primary : Colors.transparent,
        foregroundColor:
            isSelected ? colorScheme.onPrimary : colorScheme.primary,
        side: BorderSide(color: colorScheme.primary, width: 1.5),
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
    final colorScheme = Theme.of(context).colorScheme;
    final isActive = themeCubit.isLight == isLight;

    return OutlinedButton(
      onPressed: () => themeCubit.setTheme(isLight),
      style: OutlinedButton.styleFrom(
        backgroundColor: isActive ? colorScheme.primary : Colors.transparent,
        foregroundColor: isActive ? colorScheme.onPrimary : colorScheme.primary,
        side: BorderSide(color: colorScheme.primary, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(isLight ? context.localized.light : context.localized.dark),
    );
  }
}

class _ProfileInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colorScheme.outline),
      ),
      child: Column(
        children: [
          _editableField(
            context,
            icon: Icons.person,
            label: context.localized.username,
            value: 'John Doe',
          ),
          const SizedBox(height: 12),
          _editableField(
            context,
            icon: Icons.email,
            label: context.localized.email,
            value: 'john@example.com',
          ),
          const SizedBox(height: 12),
          _editableField(
            context,
            icon: Icons.phone,
            label: context.localized.phone,
            value: '+998 90 123 45 67',
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {
                // Show modal or navigate to password change screen
              },
              icon: const Icon(Icons.lock),
              label: Text(context.localized.changePassword),
              style: OutlinedButton.styleFrom(
                foregroundColor: colorScheme.primary,
                side: BorderSide(color: colorScheme.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _editableField(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        Icon(icon, color: colorScheme.primary, size: 20),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 12, color: colorScheme.onSurface),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: colorScheme.onBackground,
              ),
            ),
          ],
        ),
        // IconButton(
        //   icon: Icon(Icons.edit, size: 20, color: colorScheme.outline),
        //   onPressed: () {
        //     showModalBottomSheet(
        //       context: context,
        //       isScrollControlled: true,
        //       shape: const RoundedRectangleBorder(
        //         borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        //       ),
        //       builder: (context) => const EditProfileBottomSheet(),
        //     );
        //   },
        // ),
      ],
    );
  }
}
