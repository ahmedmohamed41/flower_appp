import 'package:flower_appp/features/app_sections/profile/presentation/view_model/profile_cubit.dart';
import 'package:flower_appp/features/app_sections/profile/presentation/view_model/profile_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is LogoutSuccess) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/login',
            (route) => false,
          );
        }
      },
      builder: (context, state) {
        if (state is ProfileLoaded) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  CircleAvatar(
                    radius: 50,
                    backgroundImage: state.photoUrl.isNotEmpty
                        ? NetworkImage(state.photoUrl)
                        : const AssetImage('assets/images/default_profile.png')
                              as ImageProvider,
                  ),
                  const SizedBox(height: 10),

                  Text(
                    state.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(state.email, style: const TextStyle(color: Colors.grey)),

                  const SizedBox(height: 30),

                  // ListTile(
                  //   leading: const Icon(Icons.logout, color: Colors.red),
                  //   title: const Text('Logout'),
                  //   onTap: () {
                  //     // بنظهر الـ Custom Dialog اللي في الديزاين عندك
                  //     showLogoutDialog(context);
                  //   },
                  // ),
                ],
              ),
            ),
          );
        }
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
