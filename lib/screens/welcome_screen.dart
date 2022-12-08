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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "LogIn",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          )
        ],
      ),
    ));
  }
}
