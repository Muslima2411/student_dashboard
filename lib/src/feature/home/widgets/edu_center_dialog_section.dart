import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      'subtitle': 'Up to 20 users and 40GB data.',
      'icon': Icons.language,
      'color': Colors.purple,
    },
    {
      'name': 'Educational Center',
      'subtitle': 'Unlimited users and data.',
      'icon': Icons.flash_on,
      'color': Colors.amber,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 25,
          children: [
            // DialogHeader(),
            // SizedBox(height: 10),
            // DialogTitle(),
            // SizedBox(height: 20),
            EduCenterOptions(),
            // SizedBox(height: 20),
            // DialogActions(),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.calendar_today, size: 24),
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
      ],
    );
  }
}

class DialogTitle extends StatelessWidget {
  const DialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Choose an educational center',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xFF2D3748),
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
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color:
            isSelected
                ? const Color(0xFF3182CE).withOpacity(0.1)
                : Colors.grey[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? const Color(0xFF3182CE) : Colors.grey[200]!,
          width: isSelected ? 2 : 1,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: EduCenterIcon(icon: center['icon'], color: center['color']),
        title: EduCenterTitle(name: center['name'], isSelected: isSelected),
        // subtitle: EduCenterSubtitle(subtitle: center['subtitle']),
        trailing:
            isSelected
                ? const Icon(Icons.check_circle, color: Color(0xFF3182CE))
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
        color: color.withOpacity(0.1),
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
    return Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: isSelected ? const Color(0xFF3182CE) : const Color(0xFF2D3748),
      ),
    );
  }
}

class EduCenterSubtitle extends StatelessWidget {
  final String subtitle;

  const EduCenterSubtitle({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(fontSize: 12, color: Color(0xFF718096)),
    );
  }
}

class DialogActions extends StatelessWidget {
  const DialogActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConfirmButton(onPressed: () => Navigator.pop(context)),
        const SizedBox(height: 10),
        CancelButton(onPressed: () => Navigator.pop(context)),
      ],
    );
  }
}

class ConfirmButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ConfirmButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF3182CE),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: const Text(
          'Confirm',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CancelButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        child: const Text(
          'Cancel',
          style: TextStyle(fontSize: 16, color: Color(0xFF718096)),
        ),
      ),
    );
  }
}
