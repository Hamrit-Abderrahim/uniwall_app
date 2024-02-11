import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor = const Color(0xFF1D4ED8),
    this.borderRadius,
    required this.style,
    this.height = 50,
    this.borderColor = const Color(0xFF1D4ED8),
    this.minWidth = double.infinity,
    required this.text,
    required this.onTap,
  });
  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final TextStyle style;
  final BorderRadius? borderRadius;
  final double? minWidth;
  final double? height;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      height: height,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: borderColor),
// No text styles in this selection
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
