import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uniwal_app/features/QrView/qr_view.dart';
import 'package:uniwal_app/features/persistent_bottom_nav_bar/widget/persiste.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key, required this.index});
  final int index;
  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Color> selectedColor = [
    const Color(0xFF249C44),
    const Color(0xFF06102B),
  ];
  late int selectedTab;
  @override
  void initState() {
    super.initState();
    selectedTab = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: buildScreens(selectedTab).elementAt(selectedTab),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
          child: SizedBox(
            height: 64,
            width: 64,
            child: FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.white,
              elevation: 0,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const QRViewExample(),
                ));
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 3, color: Color(0x0075FF4D)),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Image(
                  image: AssetImage('assets/images/Uniwall_qr_btn.png')),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedItemColor: const Color(0xFF249C44),
            unselectedLabelStyle: const TextStyle(color: Color(0xFF06102B)),
            unselectedItemColor: selectedColor[0],
            selectedIconTheme: const IconThemeData(color: Color(0xFF249C44)),
            currentIndex: selectedTab,
            onTap: (int index) {
              setState(() {
                selectedTab = index;
              });
            },
            items: navBarsItems(selectedTab)));
  }
}

List<BottomNavigationBarItem> navBarsItems(int index) {
  return [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/images/home.svg',
        color: index == 0 ? const Color(0xFF249C44) : const Color(0xFF06102B),
      ),
      label: ("Home"),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/images/p2p.svg',
        fit: BoxFit.contain,
        color: index == 1 ? const Color(0xFF249C44) : const Color(0xFF06102B),
      ),
      label: ("P2P"),
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.abc,
        size: 0,
        color: Colors.white,
      ),
      label: (" "),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/images/saving.svg',
        fit: BoxFit.contain,
        color: index == 3 ? const Color(0xFF249C44) : const Color(0xFF06102B),
      ),
      label: ("Savings"),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/images/wallet.svg',
        color: index == 4 ? const Color(0xFF249C44) : const Color(0xFF06102B),
        fit: BoxFit.contain,
      ),
      label: ("My wallet"),
    ),
  ];
}
