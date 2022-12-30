import 'package:flutter/material.dart';

class CustomizedTextfield extends StatelessWidget {
  final TextEditingController myController;
  final String? hintText;
  final bool? isPassword;
  const CustomizedTextfield(
      {super.key,
      required this.myController,
      required this.hintText,
      required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        obscureText: isPassword ?? true,
        controller: myController,
        decoration: InputDecoration(
          fillColor: Color(0xffE8ECF4),
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
