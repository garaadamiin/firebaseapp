import 'package:flutter/material.dart';

import 'package:firebase_app_flutter/screens/login_screen.dart';
import 'package:firebase_app_flutter/screens/signup_screen.dart';
import 'package:firebase_app_flutter/widgets/customized_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xFF093631)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
              height: 130,
              width: 220,
              child: Image(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.cover,
              )),
          const SizedBox(height: 100),
          customizedButton(
            buttonText: "Login",
            buttonColor: Color(0xffffb000),
            textColor: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
          ),
          customizedButton(
            buttonText: "Register",
            buttonColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SigUpScreen()));
            },
          ),
        ],
      ),
    ));
  }
}
