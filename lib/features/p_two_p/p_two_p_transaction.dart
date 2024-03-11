import 'package:flutter/material.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/widget/custom_app_bar.dart';
import 'package:uniwal_app/core/widget/custom_button.dart';
import 'package:uniwal_app/core/widget/custom_foem_fieled.dart';
import 'package:uniwal_app/features/p_two_p/p_two_p_done.dart';

class PTwoPTransaction extends StatelessWidget {
  const PTwoPTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        statusBar: Brightness.dark,
        title: 'P2P Transaction',
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 16.0, left: 16, right: 16, top: 40),
        child: SingleChildScrollView(
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '1000 DZD',
                    style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF059669),
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Will be transferred to',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    '@YassirDZ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF249C44),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const FormFieledComponent(
                    hint: 'Enter Your Pin code',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButton(
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      text: 'Confirm',
                      onTap: () {
                        Navigate.navigateAndReplace(context, const PTwoPDone());
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
