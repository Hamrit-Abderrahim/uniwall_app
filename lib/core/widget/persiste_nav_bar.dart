import 'package:flutter/material.dart';
import 'package:uniwal_app/features/home/home_view.dart';
import 'package:uniwal_app/features/p_two_p/p_two_p_view.dart';
import 'package:uniwal_app/features/savings/saving_view.dart';
import 'package:uniwal_app/features/layouts/view/bottom_nav/wallet_view.dart';

List<Widget> buildScreens = [
  const HomeView(),
  const PTwoPView(),
  const SavingView(),
  const MyWalletView()
];
