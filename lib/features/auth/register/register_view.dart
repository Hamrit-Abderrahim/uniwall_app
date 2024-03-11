import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/features/auth/login/login_view.dart';
import 'package:uniwal_app/features/auth/register/widget/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Setup your account',
                  style: Styles.style22,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Please add your name and password,  so we can call you by your name',
                  style: Styles.style16.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 24,
                ),
                RegisterForm(),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigate.navigateTo(context, const LoginView());
                    },
                    child: const Text('Back',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.w700,
                          height: 0.08,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
