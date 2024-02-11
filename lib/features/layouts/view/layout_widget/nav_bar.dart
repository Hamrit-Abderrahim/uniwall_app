import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniwal_app/core/utils/color.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          height: 60,
          child: Row(
            children: [
              navItem(
                text: 'Home',
                icon: 'assets/images/home.svg',
                selected: pageIndex == 0,
                onTap: () => onTap(0),
              ),
              navItem(
                text: 'P2P',
                icon: 'assets/images/p2p.svg',
                selected: pageIndex == 1,
                onTap: () => onTap(1),
              ),
              const SizedBox(width: 80),
              navItem(
                text: 'Savings',
                icon: 'assets/images/saving.svg',
                selected: pageIndex == 2,
                onTap: () => onTap(2),
              ),
              navItem(
                text: 'My wallet',
                icon: 'assets/images/wallet.svg',
                selected: pageIndex == 3,
                onTap: () => onTap(3),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(
      {required String icon,
      required String text,
      required bool selected,
      Function()? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              color: selected ? MyColors.defaultColor : MyColors.textColor,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12,
                  color: selected ? MyColors.defaultColor : MyColors.textColor),
            )
          ],
        ),
      ),
    );
  }
}
