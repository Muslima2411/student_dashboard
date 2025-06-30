import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_dashboard_app/src/common/styles/app_colors.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';

class EduCenterDialog extends StatelessWidget {
  const EduCenterDialog({super.key});

  static final List<Map<String, dynamic>> eduCenters = [
    {
      'name': 'Everest',
      'subtitle': 'some kinda educenter',
      'icon': Icons.school,
      'color': Colors.blue,
    },
    {
      'name': 'IELTS Zone',
      'subtitle': 'some kinda educenter',
      'icon': Icons.language,
      'color': Colors.purple,
    },
    {
      'name': 'Educational Center',
      'subtitle': 'some kinda educenter',
      'icon': Icons.flash_on,
      'color': Colors.amber,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: colorScheme.background,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DialogHeader(),
            SizedBox(height: 10),
            DialogTitle(),
            SizedBox(height: 20),
            EduCenterOptions(),
          ],
        ),
      ),
    );
  }
}

class DialogHeader extends StatelessWidget {
  const DialogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.school, size: 24, color: colorScheme.primary),
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.close, color: colorScheme.onBackground),
        ),
      ],
    );
  }
}

class DialogTitle extends StatelessWidget {
  const DialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Text(
      'Choose an educational center',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: colorScheme.onBackground,
      ),
    );
  }
}

class EduCenterOptions extends StatelessWidget {
  const EduCenterOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children:
              EduCenterDialog.eduCenters.map((center) {
                final isSelected = center['name'] == state.eduCenter;

                return EduCenterOption(
                  center: center,
                  isSelected: isSelected,
                  onTap: () {
                    context.read<HomeBloc>().add(
                      ChangeEduCenter(center['name']),
                    );
                    Navigator.pop(context);
                  },
                );
              }).toList(),
        );
      },
    );
  }
}

class EduCenterOption extends StatelessWidget {
  final Map<String, dynamic> center;
  final bool isSelected;
  final VoidCallback onTap;

  const EduCenterOption({
    super.key,
    required this.center,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color:
            isSelected
                ? colorScheme.primary.withOpacity(0.1)
                : colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? colorScheme.primary : AppColors.lightNavbarIcon,
          width: isSelected ? 2 : 1,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: EduCenterIcon(icon: center['icon'], color: center['color']),
        title: EduCenterTitle(name: center['name'], isSelected: isSelected),
        subtitle: EduCenterSubtitle(subtitle: center['subtitle']),
        trailing:
            isSelected
                ? Icon(Icons.check_circle, color: colorScheme.primary)
                : null,
        onTap: onTap,
      ),
    );
  }
}

class EduCenterIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const EduCenterIcon({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: color, size: 20),
    );
  }
}

class EduCenterTitle extends StatelessWidget {
  final String name;
  final bool isSelected;

  const EduCenterTitle({
    super.key,
    required this.name,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: isSelected ? colorScheme.primary : colorScheme.onSurface,
      ),
    );
  }
}

class EduCenterSubtitle extends StatelessWidget {
  final String subtitle;

  const EduCenterSubtitle({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Text(
      subtitle,
      style: TextStyle(
        fontSize: 12,
        color: colorScheme.onSurface.withOpacity(0.6),
      ),
    );
  }
}
