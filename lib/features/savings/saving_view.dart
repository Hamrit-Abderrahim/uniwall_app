import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/functions/text_gradient.dart';
import 'package:uniwal_app/core/utils/color.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/features/savings/new_saving.dart';

class SavingView extends StatelessWidget {
  const SavingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Introducing',
                  style: TextStyle(
                      color: MyColors.textColor,
                      fontSize: 34,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'MicroSavings:',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                      foreground: Paint()..shader = linearGradient),
                ),
                const Text(
                  'Elevate your financial game with smart, small-scale savings. \n Tailored for university students, because even the smallest savings add up. Take control of your \n financial future',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: MyColors.textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigate.navigateTo(context, const NewSaving());
                  },
                  child: Container(
                    height: 34,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF1D4ED8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Set your financial Goal',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset('assets/images/arrow_right.svg')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Color(0xFFE8EDFB)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.info_outline, color: Color(0xFF173EAD)),
                            SizedBox(
                              width: 12,
                            ),
                            Text('How it Works:', style: Styles.style16)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(text: '1.', style: Styles.style16),
                            TextSpan(
                                text:
                                    'Set Goals: Define achievable\n financial milestones by \n specifying desired amounts and \n target dates.',
                                style: Styles.style16)
                          ]),
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(text: '2.', style: Styles.style16),
                            TextSpan(
                                text:
                                    'Automate Deposits: Optimize \n savings effortlessly with \n automated recurring deposits or\n manual contributions.',
                                style: Styles.style16)
                          ]),
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(text: '3.', style: Styles.style16),
                            TextSpan(
                                text:
                                    'Track Progress: Monitor your\n financial growth through a user-\nfriendly dashboard, empowering\n you to take control of your\n financial journey.',
                                style: Styles.style16)
                          ]),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
