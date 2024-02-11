import 'package:flutter/material.dart';
import 'package:uniwal_app/core/functions/text_gradient.dart';
import 'package:uniwal_app/features/p_two_p/widget/form_p_2_p.dart';

class PTwoPView extends StatelessWidget {
  const PTwoPView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Welcome To',
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
              ),
              Text(
                'P2P Transaction',
                style: TextStyle(
                    fontSize: 33.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Instantly transfer funds, create shared memories. P2P transactions made simple',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              //!--------- form --------------
              FormPTwo()
            ],
          ),
        ),
      ),
    );
  }
}
