import 'package:flutter/material.dart';
import 'package:uniwal_app/core/widget/persiste_nav_bar.dart';

class TabPage extends StatelessWidget {
  final int tab;

  const TabPage({Key? key, required this.tab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScreens[tab - 1];
  }
}
