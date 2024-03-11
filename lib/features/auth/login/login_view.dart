import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/features/auth/login/widget/login_form.dart';
import 'package:uniwal_app/features/auth/login/widget/social_login.dart';
import 'package:uniwal_app/features/auth/register/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  'Login',
                  style: Styles.style22,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Please add your email and password in order in order to login',
                  style: Styles.style16.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 24,
                ),
                LoginForm(),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xFFC4C0D3),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('OR'),
                    ),
                    Expanded(
                        child: Divider(
                      color: Color(0xFFC4C0D3),
                    )),
                  ],
                ),
                const SocialLogin(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                        color: Color(0xFF524977),
                        fontSize: 17,
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w500,
                        height: 0.08,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('login');
                        Navigate.navigateAndReplace(
                            context, const RegisterView());
                      },
                      child: const Text('Register',
                          style: TextStyle(
                            color: Color(0xFF239C43),
                            fontSize: 17,
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w700,
                            height: 0.08,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
