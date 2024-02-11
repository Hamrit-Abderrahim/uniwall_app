import 'package:flutter/material.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/widget/custom_button.dart';
import 'package:uniwal_app/core/widget/custom_foem_fieled.dart';
import 'package:uniwal_app/features/p_two_p/p_two_p_transaction.dart';

class FormPTwo extends StatelessWidget {
  FormPTwo({super.key});
  final recipController = TextEditingController();
  final amountController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: Color(0xFFE2E8F0))),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Transaction details',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Recipient',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 7,
                ),
                FormFieledComponent(
                  controller: recipController,
                  validate: (String? vlaue) {
                    if (vlaue!.isEmpty) {
                      return 'please enter a value';
                    }
                    return null;
                  },
                  suffix: const Image(
                      image: AssetImage('assets/images/qr-scan.png')),
                  hint: "@YassirDz",
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Amount',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 7,
                ),
                FormFieledComponent(
                  type: TextInputType.number,
                  controller: amountController,
                  validate: (String? vlaue) {
                    if (vlaue!.isEmpty) {
                      return 'please enter a value';
                    }
                    return null;
                  },
                  hint: "1000 DZD",
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                    text: 'Next',
                    onTap: () {
                      // if (formKey.currentState!.validate()) {}
                      Navigate.navigateTo(context, const PTwoPTransaction());
                    })
              ],
            ),
          ),
        ));
  }
}
