import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/core/widget/custom_button.dart';
import 'package:uniwal_app/core/widget/custom_foem_fieled.dart';
import 'package:uniwal_app/features/persistent_bottom_nav_bar/layouts_view.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    bool isPassword = true;

    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: Styles.style16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            FormFieledComponent(
                controller: emailController,
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez saisir votre Username';
                  }
                  if (value.length < 4) {
                    return 'Username est court > 4';
                  }
                  return null;
                },
                prefix: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/Email.svg',
                    )),
                hint: 'Chihab',
                type: TextInputType.emailAddress),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              'Password',
              style: Styles.style16.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            StatefulBuilder(
              builder: (BuildContext context, setState) {
                return FormFieledComponent(
                  controller: passwordController,
                  hint: 'Password',
                  type: TextInputType.visiblePassword,
                  isPassword: isPassword,
                  suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: isPassword == true
                          ? SvgPicture.asset(
                              'assets/images/Eye Slash.svg',
                            )
                          : const Icon(Icons.visibility)),
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez saisir votre mot de passe';
                    }
                    if (value.length < 6) {
                      return 'Le mot de passe est court';
                    }
                    return null;
                  },
                  prefix: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/Password.svg',
                      )),
                );
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'I forgot my password',
                    style: Styles.style16.copyWith(
                      color: const Color(0xFF1B277B),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 27,
            ),
            //!------------- Login ---------------

            CustomButton(
                style: Styles.style16.copyWith(color: Colors.white),
                text: 'Login',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigate.navigateAndReplace(
                        context, const LayoutView(index: 0));
                  }
                })
          ],
        ));
  }
}
