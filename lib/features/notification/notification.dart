import 'package:flutter/material.dart';
import 'package:uniwal_app/core/widget/custom_app_bar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        brightness: Brightness.dark,
        statusBar: Brightness.dark,
        title: 'Notifications',
      ),
      body: Center(
        child: Text(
          'No new notifications',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
