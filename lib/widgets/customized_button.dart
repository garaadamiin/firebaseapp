import 'package:flutter/material.dart';

class customizedButton extends StatelessWidget {
  const customizedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        child: const Center(
            child: Text(
          "LogIn",
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
      ),
    );
  }
}
