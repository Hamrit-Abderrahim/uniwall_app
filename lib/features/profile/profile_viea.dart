import 'package:flutter/material.dart';
import 'package:uniwal_app/core/widget/custom_app_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        brightness: Brightness.dark,
        statusBar: Brightness.dark,
        title: 'Profile',
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Your profile Information will be shown here',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
