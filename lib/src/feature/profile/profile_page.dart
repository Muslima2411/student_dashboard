import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_dashboard_app/src/common/utils/extensions/context_extensions.dart';
import 'package:student_dashboard_app/src/common/styles/app_colors.dart';
import 'package:student_dashboard_app/src/common/styles/color_scheme.dart';
import 'package:student_dashboard_app/src/common/routing/app_router.dart';
import 'bloc/profile_bloc.dart';
import 'bloc/profile_event.dart';
import 'bloc/profile_state.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const LoadProfile());
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.onPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
            child: Text(
              context.localized.myProfile,
              style: textTheme.headlineSmall?.copyWith(
                color: colorScheme.onBackground,
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: [
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.primary,
                          child: Text(
                            "J",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.name,
                              style: textTheme.titleMedium?.copyWith(
                                color: colorScheme.onBackground,
                              ),
                            ),
                            Text(
                              state.id,
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onBackground,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Builder(
                          builder:
                              (context) => IconButton(
                                icon: Icon(
                                  Icons.settings,
                                  color: colorScheme.onSecondary,
                                ),
                                onPressed: () {
                                  context.router.push(const SettingsRoute());
                                },
                              ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 34),
                    Text(
                      context.localized.contactDetails,
                      style: textTheme.titleSmall?.copyWith(
                        color: colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _infoRow(
                      context.localized.contactNo,
                      state.contactNo,
                      context,
                    ),
                    _infoRow(context.localized.email, state.email, context),
                    _infoRow(context.localized.address, state.address, context),

                    const SizedBox(height: 24),
                    Text(
                      context.localized.ongoingCourses,
                      style: textTheme.titleSmall?.copyWith(
                        color: colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ...state.ongoingCourses.map(
                      (course) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                course['name']!,
                                style: textTheme.titleMedium?.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_today,
                                    size: 16,
                                    color: AppColors.white,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    course['days']!,
                                    style: textTheme.bodySmall?.copyWith(
                                      color: AppColors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),
                    Text(
                      context.localized.eduCenters,
                      style: textTheme.titleSmall?.copyWith(
                        color: colorScheme.onBackground,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 12.0,
                      runSpacing: 12.0,
                      children:
                          state.eduCenters.map((center) {
                            Color backgroundColor;
                            switch (center) {
                              case 'Everest':
                                backgroundColor = AppColors.secondary;
                                break;
                              case 'IELTS Zone':
                                backgroundColor = const Color(0xFFBBB9F3);
                                break;
                              case 'Educational Center':
                                backgroundColor = const Color(0xFFBDEACF);
                                break;
                              default:
                                backgroundColor = Colors.grey.withOpacity(0.5);
                            }

                            return Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Color(0xFF1E3A8A),
                                    child: Icon(
                                      Icons.school,
                                      size: 14,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(center, style: textTheme.bodyMedium),
                                ],
                              ),
                            );
                          }).toList(),
                    ),

                    const SizedBox(height: 40),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoRow(String label, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onBackground,
            ),
          ),
          Text(
            value,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );
  }
}
