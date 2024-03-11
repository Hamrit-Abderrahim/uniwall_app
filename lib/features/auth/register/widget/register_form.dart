import 'package:flutter/material.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/core/widget/custom_button.dart';
import 'package:uniwal_app/core/widget/custom_foem_fieled.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //----- First Name-------
            Text(
              'First Name',
              style: Styles.style16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            FormFieledComponent(
                controller: firstNameController,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez saisir votre First Name';
                  }
                  if (value.length < 6) {
                    return 'First Name est court > 6';
                  }
                  return null;
                },
                hint: 'Chihab',
                type: TextInputType.text),
            const SizedBox(
              height: 16.0,
            ),
            //----- First Name-------
            Text(
              'Last Name',
              style: Styles.style16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            FormFieledComponent(
                controller: lastNameController,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez saisir votre Last Name';
                  }
                  if (value.length < 6) {
                    return 'Last Name est court > 6';
                  }
                  return null;
                },
                hint: 'Drissi',
                type: TextInputType.text),
            const SizedBox(
              height: 16.0,
            ),
            //----- University Email-------
            Text(
              'University Email',
              style: Styles.style16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            FormFieledComponent(
                controller: emailController,
                validate: (value) {
                  if (value!.isEmpty) {
                    return "S’il vous plaît entrez votre Email";
                  }
                  if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                      .hasMatch(value)) {
                    return 'Veuillez saisir une adresse e-mail valide';
                  }
                  return null;
                },
                hint: 'example@esgen.edu.dz',
                type: TextInputType.emailAddress),
            const SizedBox(
              height: 16.0,
            ),
            //--------- Password ------------
            Text(
              'Password',
              style: Styles.style16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),

            FormFieledComponent(
              controller: passwordController,
              hint: '●●●●●●●●●●●●●●●●',
              type: TextInputType.visiblePassword,
              validate: (value) {
                if (value!.isEmpty) {
                  return 'Veuillez saisir votre mot de passe';
                }
                if (value.length < 6) {
                  return 'Le mot de passe est court';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'NOTE: this is a prototype. in the real product, a KYC process must be completed in order to comply to the law.',
              style: Styles.style12.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 20.0,
            ),

            //!------------- Login ---------------

            CustomButton(
                style: Styles.style16.copyWith(color: Colors.white),
                text: 'Sign up',
                onTap: () {
                  if (formKey.currentState!.validate()) {}
                })
          ],
        ));
  }
}
