import 'package:bootcamp_training/widget/buttons.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Container(
              width: 155,
              height: 50,
              margin: const EdgeInsets.only(bottom: 50, top: 100),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                'assets/logo4.jpg',
              ))),
            ),
            const Text('Sign In with your\nexisting account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CostumFromField(
                    title: 'Email Address',
                    hintText: 'Your email address',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CostumFromField(
                      title: 'Password',
                      hintText: 'Your password',
                      obscureText: true),
                  const SizedBox(
                    height: 8,
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: 'Sign In',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home-page', (route) => false);
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CostumTextButton(
                    title: 'Create New Account',
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    },
                  )
                ],
              ),
            )
          ]),
    );
  }
}
