import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uniwal_app/core/utils/styles.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 52,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF1D4ED8)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage('assets/images/merse.png')),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Continue with Progres mesrs',
                style: Styles.style14.copyWith(color: const Color(0xFF937E11)),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          height: 52,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF1D4ED8)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/Google Logo.svg'),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Continue with Google',
                style: Styles.style14.copyWith(color: const Color(0xFF6A6A6A)),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          height: 52,
          decoration: ShapeDecoration(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF1D4ED8)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/Apple Logo.svg'),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Continue with Apple',
                style: Styles.style14.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
