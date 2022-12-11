import 'package:firebase_app_flutter/widgets/customized_button.dart';
import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
              height: 130,
              width: 220,
              child: Image(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.cover,
              )),
          customizedButton(
            buttonText: "Login",
            buttonColor: Colors.black,
            textColor: Colors.white,
            onPressed: () {},
          ),
          customizedButton(
            buttonText: "Register",
            buttonColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}
