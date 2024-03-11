import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uniwal_app/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.style = Styles.style17,
    this.iconColor = const Color(0xFFADADAD),
    this.backColor = Colors.transparent,
    this.elevation = 0.0,
    this.textColor = Colors.black,
    this.colorLeadingColor = const Color(0xFF101623),
    this.actions,
    this.bottom,
    this.statusBar = Brightness.light,
    this.brightness = Brightness.light,
    this.centerTitle = true,
  });
  final String title;
  final Color iconColor;
  final Color backColor;
  final double elevation;
  final TextStyle style;
  final PreferredSizeWidget? bottom;
  final Color textColor;
  final Color colorLeadingColor;
  final Brightness statusBar;
  final Brightness brightness;
  final bool centerTitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottom,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: statusBar,
        statusBarBrightness: brightness,
      ),
      actions: actions,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/images/arrow_left.svg',
          color: colorLeadingColor,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        title,
        style: style,
      ),
      centerTitle: centerTitle,
      iconTheme: const IconThemeData(color: Color(0xFFADADAD)),
      elevation: elevation,
      backgroundColor: backColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
