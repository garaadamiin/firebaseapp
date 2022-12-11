import 'package:firebase_app_flutter/screens/login_screen.dart';
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
          const SizedBox(height: 40),
          customizedButton(
            buttonText: "Login",
            buttonColor: Colors.black,
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
          ),
          customizedButton(
            buttonText: "Register",
            buttonColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Continue as a Guest",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          )
        ],
      ),
    ));
  }
}
