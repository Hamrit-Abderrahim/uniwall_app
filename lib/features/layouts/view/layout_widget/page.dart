import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  final int tab;

  const PageScreen({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Tab $tab')),
      body: Center(child: Text('Tab $tab')),
    );
  }
}
