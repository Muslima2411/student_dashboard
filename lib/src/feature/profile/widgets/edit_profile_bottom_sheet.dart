import 'package:flutter/material.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';

class EditProfileBottomSheet extends StatefulWidget {
  const EditProfileBottomSheet({super.key});

  @override
  State<EditProfileBottomSheet> createState() => _EditProfileBottomSheetState();
}

class _EditProfileBottomSheetState extends State<EditProfileBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController(text: 'zikrulloh');
  final _emailController = TextEditingController(text: 'you@example.com');
  final _phoneController = TextEditingController(text: '+998 90 123 45 67');

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Wrap(
            runSpacing: 16,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              Text(
                context.localized.profileInfo,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onBackground,
                ),
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: context.localized.username,
                ),
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: context.localized.email),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: context.localized.phone),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Save action here
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(context.localized.save),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
