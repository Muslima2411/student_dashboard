import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/profile_bloc.dart';
import 'bloc/profile_event.dart';
import 'bloc/profile_state.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const LoadProfile());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFDDE6F2),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return ListView(
                    padding: const EdgeInsets.all(16.0),
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.orange,
                            child: Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(state.id),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Contact Details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Contact no'),
                          Text(state.contactNo),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [const Text('Email'), Text(state.email)],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [const Text('Address'), Text(state.address)],
                      ),
                      TextButton(
                        onPressed:
                            () => context.read<ProfileBloc>().add(
                              const EditContactDetails(),
                            ),
                        child: const Text('Edit'),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'My current/ongoing courses',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      ...state.ongoingCourses.map(
                        (course) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Card(
                            color: Colors.lightBlue[100],
                            child: ListTile(
                              title: Text(course['name']!),
                              subtitle: Text(course['days']!),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'My Edu. Centers',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8.0,
                        children:
                            state.eduCenters.map((center) {
                              Color color;
                              switch (center) {
                                case 'Everest':
                                  color = Colors.blue;
                                  break;
                                case 'IELTS Zone':
                                  color = Colors.purple;
                                  break;
                                case 'Educational Center':
                                  color = Colors.green;
                                  break;
                                default:
                                  color = Colors.grey;
                              }
                              return ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: color,
                                ),
                                child: Text(center),
                              );
                            }).toList(),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
