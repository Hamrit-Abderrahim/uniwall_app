import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:uniwal_app/features/home/home_view.dart';
import 'package:uniwal_app/features/QrView/qr_view.dart';
import 'package:uniwal_app/features/p_two_p/p_two_p_view.dart';
import 'package:uniwal_app/features/savings/saving_view.dart';
import 'package:uniwal_app/features/wallet/my_wallet.dart';
import 'package:uniwal_app/features/wallet/wallet%20_topup.dart';

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Expanded(
        child: SvgPicture.asset(
          'assets/images/home.svg',
          color: const Color(0xFF249C44),
        ),
      ),
      inactiveIcon: SvgPicture.asset(
        'assets/images/home.svg',
        fit: BoxFit.contain,
      ),
      contentPadding: 0,
      title: ("Home"),
      activeColorPrimary: const Color(0xFF249C44),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        'assets/images/p2p.svg',
        fit: BoxFit.contain,
      ),
      title: ("P2P"),
      activeColorPrimary: const Color(0xFF249C44),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Image(image: AssetImage('assets/images/Uniwall_qr_btn.png')),
      title: (" "),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.settings),
      title: ("Savings"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Image(
        image: AssetImage('assets/images/Icon.png'),
      ),
      title: ("My wallet"),
      activeColorPrimary: const Color(0xFF249C44),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}

List<Widget> buildScreens(selectedTab) {
  return [
    const HomeView(),
    const PTwoPView(),
    const QRViewExample(),
    const SavingView(),
    const MyWallet()
  ];
}
